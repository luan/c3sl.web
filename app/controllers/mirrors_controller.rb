class MirrorsController < ApplicationController
  def index
    @mirrors = Mirror.all
  end
end
