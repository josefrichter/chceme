class SuggestionsController < ApplicationController
  # GET /suggestions
  # GET /suggestions.xml
  def index
    @suggestions = Suggestion.all
    # this sorts suggestions by plus votes count
    #@suggestions = @suggestions.sort_by{|suggestion| -suggestion.votes.find_all{|vote| vote.value == true}.count}
    @suggestions = @suggestions.sort_by{|suggestion| -suggestion.votes_difference}

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @suggestions }
    end
  end

  # GET /suggestions/1
  # GET /suggestions/1.xml
  def show
    #@suggestion = Suggestion.find(params[:id])
    @suggestion = Suggestion.where(:slug => params[:id]).first

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @suggestion }
    end
  end

  # GET /suggestions/new
  # GET /suggestions/new.xml
  def new
    @suggestion = Suggestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @suggestion }
    end
  end

  # GET /suggestions/1/edit
  def edit
    #@suggestion = Suggestion.find(params[:id])
    @suggestion = Suggestion.where(:slug => params[:id]).first
  end

  # POST /suggestions
  # POST /suggestions.xml
  def create
    @suggestion = Suggestion.new(params[:suggestion])

    respond_to do |format|
      if @suggestion.save
        format.html { redirect_to(@suggestion, :notice => 'Document was successfully created.') }
        format.xml  { render :xml => @suggestion, :status => :created, :location => @suggestion }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @suggestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /suggestions/1
  # PUT /suggestions/1.xml
  def update
    #@suggestion = Suggestion.find(params[:id])
    @suggestion = Suggestion.where(:slug => params[:id]).first

    respond_to do |format|
      if @suggestion.update_attributes(params[:suggestion])
        format.html { redirect_to(@suggestion, :notice => 'Document was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @suggestion.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /suggestions/1
  # DELETE /suggestions/1.xml
  def destroy
    #@suggestion = Suggestion.find(params[:id])
    @suggestion = Suggestion.where(:slug => params[:id]).first
    @suggestion.destroy

    respond_to do |format|
      format.html { redirect_to(suggestions_url) }
      format.xml  { head :ok }
    end
  end
end
