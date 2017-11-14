class AttachmentsController < ApplicationController

  def index
     @attachments = Attachment.all
  end

  def show
    @attachment = Attachment.find(params[:id])
  end

end
