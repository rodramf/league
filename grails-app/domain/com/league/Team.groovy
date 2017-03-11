package com.league

class Team {
    String name
    String labelColor
    Integer goals

    static hasMany = [
      players: Player
    ]

    static constraints = {
    }
}
