require 'site_prism/exceptions'
require 'addressable/template'

module SitePrism
  autoload :ElementContainer, 'site_prism/element_container'
  autoload :ElementChecker, 'site_prism/element_checker'
  autoload :LambdaResolver, 'site_prism/lambda_resolver'
  autoload :Page, 'site_prism/page'
  autoload :Section, 'site_prism/section'
  autoload :Waiter, 'site_prism/waiter'
  autoload :AddressableQueryProcessor, 'site_prism/addressable_query_processor'
  autoload :AddressableUrlMatcher, 'site_prism/addressable_url_matcher'

  class << self
    attr_accessor :use_implicit_waits

    def configure
      yield self
    end
  end

  @use_implicit_waits = false
end
