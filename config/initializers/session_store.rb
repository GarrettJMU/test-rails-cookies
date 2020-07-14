Rails.application.config.session_store :cookie_store,
                                       key: '_test-web_session',
                                       expire_after: 14.days,
                                       domain: %w(test2.garretthughes.com test1.garretthughes.com)
