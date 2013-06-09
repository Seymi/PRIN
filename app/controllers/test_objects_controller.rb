class TestObjectsController < ApplicationController

  before_filter :get_customer
  # :get_customer is defined at the bottom of this file
  # and takes the customer_id given by the routing
  # and converts it to an @customer object


  # GET /test_objects
  # GET /test_objects.json
  def index
    @test_objects = @customer.test_objects
    #@test_objects = TestObject.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @test_objects }
    end
  end

  # GET /test_objects/1
  # GET /test_objects/1.json
  def show
    @test_object = @customer.test_objects.find(params[:id])
    #@test_object = TestObject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @test_object }
    end
  end

  # GET /test_objects/new
  # GET /test_objects/new.json
  def new
    @customer = Customer.find(params[:customer_id])
    @test_object = @customer.test_objects.build
    #@test_object = TestObject.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @test_object }
    end
  end

  # GET /test_objects/1/edit
  def edit
    @test_object = @customer.test_objects.find(params[:id])
    #@test_object = TestObject.find(params[:id])
  end

  # POST /test_objects
  # POST /test_objects.json
  def create
    @test_object = @customer.test_objects.build(params[:test_object])
    #@test_object = TestObject.new(params[:test_object])

    respond_to do |format|
      if @test_object.save
        format.html { redirect_to customer_test_objects_url(@customer), notice: 'Test object was successfully created.' }
        format.json { render json: @test_object, status: :created, location: @test_object }
      else
        format.html { render action: "new" }
        format.json { render json: @test_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /test_objects/1
  # PUT /test_objects/1.json
  def update
    @test_object = @customer.test_objects.find(params[:id])
    #@test_object = TestObject.find(params[:id])

    respond_to do |format|
      if @test_object.update_attributes(params[:test_object])
        format.html { redirect_to customer_test_objects_path(@customer), notice: 'Test object was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @test_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_objects/1
  # DELETE /test_objects/1.json
  def destroy
    @test_object = @customer.test_objects.find(params[:id])
    #@test_object = TestObject.find(params[:id])
    @test_object.destroy

    respond_to do |format|
      format.html { redirect_to customer_test_objects_path(@customer) }
      format.json { head :no_content }
    end
  end


  private
  # get_customer converts the customer_id given by the routing
  # into an @customer object, for use in the view and here.
  def get_customer
    @customer = Customer.find(params[:customer_id])
  end

end
