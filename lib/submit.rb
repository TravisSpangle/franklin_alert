module Button
  class Submit
    def available?
      state
    end

    private

    def page_source
      HTTParty.get(Config[:brisket_url]).body
    end

    def text
      @submit_button ||= Nokogiri::HTML(page_source).css('button.product__submit-button').text
    end

    def state
      if text.include?("Sold Out")
        false
      else
        true
      end
    end
  end
end
