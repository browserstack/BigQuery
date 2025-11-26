# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "big_query/version"

Gem::Specification.new do |s|
  s.name            = "bigquery"
  s.version         = BigQuery::VERSION
  s.authors         = ["Adam Bronte", "Andres Bravo"]
  s.email           = ["adam@brontesaurus.com", "andresbravog@gmail.com"]
  s.description     = "A lightweight wrapper for Google BigQuery using the modern google-apis SDK."
  s.require_paths   = ["lib"]
  s.summary         = "A nice wrapper for Google Big Query"
  s.homepage        = "https://github.com/abronte/BigQuery"
  s.files           = `git ls-files`.split("\n")
  s.test_files      = `git ls-files -- {test,spec,features}/*`.split("\n")

  # --- ❌ REMOVE OLD / DEPRECATED DEPENDENCIES ---
  # s.add_dependency "google-api-client", "~> 0.9.3"
  # s.add_dependency "googleauth", "~> 0.5.0"

  # --- ✅ ADD MODERN GOOGLE API CLIENT LIBRARIES ---
  # BigQuery V2 API client
  s.add_dependency "google-apis-bigquery_v2", ">= 0.53"

  # Modern Google Auth (compatible with Faraday 2.x)
  s.add_dependency "googleauth", ">= 1.3"

  # --- DEV DEPS ---
  s.add_development_dependency "bundler"
  s.add_development_dependency "rake"
  s.add_development_dependency "minitest"
  s.add_development_dependency "pry-byebug"
end
