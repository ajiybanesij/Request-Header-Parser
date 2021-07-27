# frozen_string_literal: true
class ParserController < ApplicationController
  def index
    puts request.headers['original_url']
    if request.query_parameters.empty?
      render json: {
        "language": request.headers['accept-language'],
        "remote_ip": request.remote_ip,
        "software": request.headers['user-agent'],
        "url": request.original_url,
        "path": request.original_fullpath,
        "method": request.raw_request_method
      }
    else

      case request.query_parameters['info']
      when 'language'
        render json: {
          "response": request.headers['accept-language']
        }
      when 'software'
        render json: {
          "response": request.headers['user-agent']
        }
      when 'ipaddress'
        render json: {
          "response": request.remote_ip
        }
      when 'url'
        render json: {
          "response": request.original_url
        }
      when 'path'
        render json: {
          "response": request.original_fullpath
        }
      when 'method'
        render json: {
          "response": request.raw_request_method
        }

      end

    end



  end
end
