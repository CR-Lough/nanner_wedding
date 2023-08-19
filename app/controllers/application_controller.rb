class ApplicationController < ActionController::Base
  http_basic_authenticate_with name: "guest", password: "babinwedding"
end