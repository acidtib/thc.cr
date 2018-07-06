module Thc
  class Cli < Clim
    main_command do
      desc "find strains"
      usage "thc [sub_command] [arguments]"
      version "thc version: #{Thc::VERSION}", short: "-v"

      run do |options, arguments|
        puts options.help # show help
      end

      sub_command "scrape" do
        desc "run a scraper"
        usage "thc scrape [options] [arguments]"
        option "--site=leafly", type: String, desc: "Site to scrape wikileaf, leafly, 420101, cannasos", default: "wikileaf"

        run do |options, arguments|
          puts "scrape"
          puts options.site
        end
      end
    end
  end
end