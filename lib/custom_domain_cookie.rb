# Custom Domain Cookie
#
# Set the cookie domain to the custom domain if it's present
class CustomDomainCookie
  def initialize(app, default_domain)
    @app = app
    @default_domain = default_domain
  end

  def call(env)
    host = env["HTTP_HOST"].split(':').first
    allowed_hosts = %w[test1.garretthughes.com test2.garretthughes.com]
    # allowed_hosts.each do |allowed_host|
    #   env["rack.session.options"][:domain] = ".#{allowed_host}"
    #   @app.call(env)
    # end
    env["rack.session.options"][:domain] = ".#{host}"
    @app.call(env)
  end

  # def custom_domain?(host)
  #   host !~ /#{@default_domain.sub(/^\./, '')}/i
  # end
end
