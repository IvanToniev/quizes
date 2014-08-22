class Admin::QuestionQuizRelationsController < Admin::AdminApplicationController
  before_action :set_question_quiz_relation, only: [:show, :edit, :update, :destroy]

  # GET /question_quiz_relations
  # GET /question_quiz_relations.json
  def index
    @question_quiz_relations = QuestionQuizRelation.all
  end

  # GET /question_quiz_relations/1
  # GET /question_quiz_relations/1.json
  def show
  end

  # GET /question_quiz_relations/new
  def new
    @question_quiz_relation = QuestionQuizRelation.new
  end

  # GET /question_quiz_relations/1/edit
  def edit
  end

  # POST /question_quiz_relations
  # POST /question_quiz_relations.json
  def create
    @question_quiz_relation = QuestionQuizRelation.new(question_quiz_relation_params)

    respond_to do |format|
      if @question_quiz_relation.save
        format.html { redirect_to @question_quiz_relation, notice: 'Question quiz relation was successfully created.' }
        format.json { render :show, status: :created, location: @question_quiz_relation }
      else
        format.html { render :new }
        format.json { render json: @question_quiz_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /question_quiz_relations/1
  # PATCH/PUT /question_quiz_relations/1.json
  def update
    respond_to do |format|
      if @question_quiz_relation.update(question_quiz_relation_params)
        format.html { redirect_to @question_quiz_relation, notice: 'Question quiz relation was successfully updated.' }
        format.json { render :show, status: :ok, location: @question_quiz_relation }
      else
        format.html { render :edit }
        format.json { render json: @question_quiz_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question_quiz_relations/1
  # DELETE /question_quiz_relations/1.json
  def destroy
    @question_quiz_relation.destroy
    respond_to do |format|
      format.html { redirect_to question_quiz_relations_url, notice: 'Question quiz relation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question_quiz_relation
      @question_quiz_relation = QuestionQuizRelation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_quiz_relation_params
      params.require(:question_quiz_relation).permit(:question_id, :quiz_id, :show_order)
    end
end
