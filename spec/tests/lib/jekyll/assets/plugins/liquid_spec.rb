# Frozen-string-literal: true
# Copyright: 2012 - 2017 - MIT License
# Encoding: utf-8

require "rspec/helper"
describe "Plugins/Liquid" do
  let(:asset) { env.manifest.find("plugins/liquid.css").first }
  it "should pre-process" do
    expect(asset.to_s).to(match("html{opacity:3}body{opacity:3}\n"))
  end
end
