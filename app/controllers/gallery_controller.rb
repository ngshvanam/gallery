class GalleryController < ApplicationController
def index
	list = []
	(1...81).each_with_index do |i|
	  list << i
	end
	render :json=>{:ids=>list}
end
def show
	file  = File.open(Rails.root.join('Images','Capture'+params[:id]+'.PNG'),'rb').read
	send_data file.to_blob, :type => 'image/png', :disposition => 'inline'
end
end
