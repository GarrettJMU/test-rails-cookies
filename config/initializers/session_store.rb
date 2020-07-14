Rails.application.config.session_store :cookie_store,
                                       key: '_test-web_session',
                                       expire_after: 14.days,
                                       domain: '.garretthughes.com'
