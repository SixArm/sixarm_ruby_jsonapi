# -*- coding: utf-8 -*-
=begin

JSON API Error objects provide additional information about problems
encountered while performing an operation.

Error objects MUST be returned as an array keyed by "errors" in the
top level of a JSON API document, and SHOULD NOT be returned with
any primary data.

An error object MAY have the following members:

  * "id" - A unique identifier for this particular occurrence of the problem.
  * "href" - A URI that MAY yield further details about this particular occurrence of the problem.
  * "status" - The HTTP status code applicable to this problem, expressed as a string value.
  * "code" - An application-specific error code, expressed as a string value.
  * "title" - A short, human-readable summary of the problem. It SHOULD NOT change from occurrence to occurrence of the problem, except for purposes of localization.
  * "detail" - A human-readable explanation specific to this occurrence of the problem.
  * "source" - An object containing references to the source of the error, optionally including any of the following members:
    * "pointer" - A JSON Pointer [RFC6901] to the associated entity in the request document [e.g. "/data" for a primary data object, or "/data/attributes/title" for a specific attribute].
    * "parameter" - An optional string indicating which query parameter caused the error.
  * "meta" - to contain non-standard meta-information about the error.

=end

module JSONAPI
end

class JSONAPI::Error

  attr_accessor :id
  attr_accessor :href
  attr_accessor :status
  attr_accessor :code
  attr_accessor :title
  attr_accessor :detail
  attr_accessor :source
  attr_accessor :pointer
  attr_accessor :parameter
  attr_accessor :meta

  def initialize(options={})
    [:id, :href, :status, :code, :title, :detail, :source, :pointer, :parameter, :meta].each{|attr|
      if options.has_key?(attr)
        self.send("#{attr}=", options[attr])
      end
    }
  end

  def source
    if @parameter || @pointer
      h = @source || {}
      @parameter and h.merge!("parameter" => @parameter)
      @pointer and h.merge!("pointer" => @pointer)
      h
    else
      @source
    end
  end

end
