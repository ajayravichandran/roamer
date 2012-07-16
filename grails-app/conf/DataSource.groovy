dataSource {
	pooled = true
    driverClassName = "org.postgresql.Driver"
    username = "roamer"
    password = "roamer"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'com.opensymphony.oscache.hibernate.OSCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop','update'
            url = "jdbc:postgresql:roamer"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql:roamer"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql:roamer"
        }
    }
}
