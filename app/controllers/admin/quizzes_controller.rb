class Admin::QuizzesController < Admin::AdminApplicationController
  # TODO
  before_action :set_quiz, only: [:show, :edit, :update, :destroy,
                                  :add_questions, :do_add_questions, :order_questions, :move_up, :move_down]

  # GET /quizzes
  # GET /quizzes.json
  def index
    @quizzes = Quiz.all
  end

  # GET /quizzes/1
  # GET /quizzes/1.json
  def show
  end

  # GET /quizzes/new
  def new
    @quiz = Quiz.new
    @questions = Question.all
  end

  def add_questions
    @questions = Question.all
  end

  def do_add_questions
    if params[:ids].nil?
      @quiz.questions.clear
    else
      @quiz.questions = []
      params[:ids].each do |question_id|
        question = Question.find(question_id)
        @quiz.questions << question
        flash[:notice] = 'done'
      end
    end

    redirect_to [:add_questions, :admin, @quiz]
  end

  def order_questions
    # # !!!!!
    # QuestionQuizRelation.where(quiz_id: @quiz.id).order('show_order desc').each do |relation|
    #   @questions << Question.find(relation.question_id)
    # end
    @question_quiz_relations = @quiz.question_quiz_relations.includes(:question).order('show_order asc')
  end

  def move_up
    question = Question.find(params[:question_id])
    @quiz.move_question_up(question)

    # quiz.move_question_up(question)
    redirect_to [:order_questions, :admin, @quiz], notice: 'Done'
  end

  def move_down
    question = Question.find(params[:question_id])
    @quiz.move_question_down(question)

    redirect_to [:order_questions, :admin, @quiz], notice: 'Done'
  end

  # GET /quizzes/1/edit
  def edit
  end

  # POST /quizzes
  # POST /quizzes.json
  def create
    params = quiz_params

    @quiz = current_user.quizzes.new(params)

    respond_to do |format|
      if @quiz.save
        format.html { redirect_to [:admin, @quiz], notice: 'Quiz was successfully created.' }
        format.json { render :show, status: :created, location: @quiz }
      else
        format.html { render :new }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizzes/1
  # PATCH/PUT /quizzes/1.json
  def update
    respond_to do |format|
      if @quiz.update(quiz_params)
        format.html { redirect_to [:admin, @quiz], notice: 'Quiz was successfully updated.' }
        format.json { render :show, status: :ok, location: @quiz }
      else
        format.html { render :edit }
        format.json { render json: @quiz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizzes/1
  # DELETE /quizzes/1.json
  def destroy
    @quiz.destroy
    respond_to do |format|
      format.html { redirect_to admin_quizzes_url, notice: 'Quiz was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz
      @quiz = Quiz.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quiz_params
      params.require(:quiz).permit(:title)
    end
end
