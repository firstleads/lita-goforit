module Lita
  module Handlers
    class GoForIt < Handler
      route(%r{(went|go(ing|es)?) for it}i, :gopher)

      def gopher(response)
        response.reply GOPHERS.sample
      end

      # Add any good gopher url to this list
      GOPHERS = %w(
        https://imgur.com/6Y975IW
        https://imgur.com/dYZIiXj
        https://imgur.com/3GRanpy
        https://imgur.com/ch8tJhC
        https://imgur.com/hDT2Nw3
        https://imgur.com/tLpx2oq
        https://imgur.com/UtnCghN
        https://imgur.com/BjbPHTv
        https://imgur.com/2HWHIPa
        https://imgur.com/EPL75f8
        https://imgur.com/moXYVhl
        https://imgur.com/KZlAdz3
        https://imgur.com/KHfoV9C
        https://imgur.com/vGKN2H5
        https://imgur.com/jFWaiKY
        https://imgur.com/OLVaIuU
        https://imgur.com/8YxIW32
        https://imgur.com/XLnz7LI
        https://imgur.com/1sYPO4d
        https://imgur.com/TcFnQyI
        https://imgur.com/08T67ha
        https://imgur.com/ayxnqlG
        https://imgur.com/1UfX0MJ
        https://imgur.com/ceFYuzM
        https://imgur.com/yuFXkd1
        https://imgur.com/FE6pXRU
        https://i.imgur.com/37HxmNT.jpg
        https://i.imgur.com/5KG3Fum.jpg
        https://i.imgur.com/QIxi6oW.jpg
        https://i.imgur.com/pebrTzS.jpg
        https://i.imgur.com/gZw6Is4.jpg
        https://i.imgur.com/WX74f2R.jpg
        https://i.imgur.com/vtUjsVe.jpg
        https://i.imgur.com/M0UOpX7.jpg
        https://i.imgur.com/SFAVNtj.jpg
        https://i.imgur.com/tZHYrf3.jpg
        https://i.imgur.com/XIoJvIx.png
      )
    end

    Lita.register_handler(GoForIt)
  end
end
