require 'green_shoes'
#backcolor=ask_color("Pick a color for the background")
Shoes.app :title=>"Show Directory Listing", width:400, height:300 do
  #first we create a Text field which will accept data
  background "#EFC"       #rgb(235,140, 0)#backcolor #----"#EFC"

  border("#BE8",
         strokewidth:6)
  #Open up a stack to arrang all elements into it

  stack(margin:12) do
    para "Paste your directory into the text field"
    username=edit_line
      @button= button "List" do
        begin
          @Dir_Listing=username.text   #@Dir_listing now contains the Path to the file
          @px=para Dir.entries(@Dir_Listing),top:117,left:13



        rescue Exception =>  exep
          @exception_msg=para "Wrong Directory! Try Again", top:117,left:13
          para "Error Message:" + exep.to_s, top:145, left:13
        end
      end #end button list

      #@dir_list
      #@num=@Dir_Listing.to_s
  end
  #@clear_button=button "Clear", top:72,left:130
   # end

end


