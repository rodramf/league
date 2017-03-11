import com.league.MatchStatus
import com.security.Requestmap
import com.security.User
import com.security.Role
import com.security.UserRole
import com.league.League
import org.springframework.web.context.support.WebApplicationContextUtils

class BootStrap {

  def init = { servletContext ->

    //Customs Object Marshallers registration
    def springContext = WebApplicationContextUtils.getWebApplicationContext( servletContext )
    springContext.getBean( "customObjectMarshallers" ).register()

    //MatchStatus dataBase init
    if(MatchStatus.count == 0){
      new MatchStatus(name: "opened").save()
      new MatchStatus(name: "closed").save()
      new MatchStatus(name: "playing").save()
      new MatchStatus(name: "finished").save()
      new MatchStatus(name: "cancelled").save()
    }

    //Requestmap dataBase init
    if(Requestmap.count == 0){
      for (String url in [
        '/',
        '/index',
        '/index.gsp',
        '/**/favicon.ico',
        '/assets/**',
        '/**/js/**',
        '/**/css/**',
        '/**/images/**',
        '/login',
        '/login.*',
        '/login/*',
        '/api/login/**',
        '/oauth/**',
        '/reporte/**',
        '/logout',
        '/logout.*',
        '/logout/*',
        '/searchable/**'
        ]) {
        new Requestmap(url: url, configAttribute: 'permitAll').save()
      }
      new Requestmap(url: '/api/**', httpMethod:'GET', configAttribute: 'isFullyAuthenticated()').save()
      new Requestmap(url: '/api/**', httpMethod:'DELETE', configAttribute: 'ROLE_ADMIN').save()

      new Requestmap(url: '/role/**', configAttribute: 'ROLE_ADMIN').save()
      new Requestmap(url: '/user/**', configAttribute: 'ROLE_ADMIN').save()
      new Requestmap(url: '/requestmap/**', configAttribute: 'ROLE_ADMIN').save()
      new Requestmap(url: '/dbconsole/**', configAttribute: 'ROLE_ADMIN').save()
      new Requestmap(url: '/console/**', configAttribute: 'ROLE_ADMIN').save()

      //Role database init
      if(Role.count == 0){
        new Role(authority:"ROLE_ADMIN").save()
        new Role(authority:"ROLE_PLAYER").save()
      }

      //User database init
      if(User.count == 0){
        new User(username:"admin", password: "admin", enabled: true).save()
        UserRole.create User.findByUsername('admin'), Role.findByAuthority("ROLE_ADMIN"), true
      }
        
      //League database init
      if(League.count == 0){
        new League(name: "Roger League", description: "Futbol 7 en Meli Arias").save()  
      }
      
    } 
    def destroy = {
    }
  }
}
