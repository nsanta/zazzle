require "zazzle/version"

class Zazzle

  class << self

    attr_accessor :associate_id

    def product_link(product_id, page = 'productpage', options = {})
      params = {:rf => associate_id ,
                :ax => 'linkover' ,
                :pd => product_id ,
                :fwd => page,
                :ed => true}.merge(options)
      build_request(params)
    end

    def buffet_link(category_id, options = {})
      params = {:rf => associate_id ,
                :ax => 'designblast' ,
                :cg => category_id ,
                :fwd => page,
                :ed => true}.merge(options)
      build_request(params)
    end


    private

    def build_request(params = {})
      ["http://www.zazzle.com/api/create/at-#{associate_id}" , "?"+params.to_a.map{|p| p.join('=')}.join('&')].join()
    end

  end

end

