package com.league

import com.security.User

class Player {
    User user
    Integer points = 0
    Date dateCreated
    Date lastUpdated

    static belongsTo = [league: League]

    static constraints = {
    }
}
