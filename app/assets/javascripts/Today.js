Today = {

  Rating : function($element) {

    var $question = $element.find('[data-question]');
    var $answer = $element.find('[data-answered]');
    $answer.hide();

    $element.find('a').on('click', function(){
      localStorage.setItem($element.data('rating-name'), true);
      $question.hide();
      $answer.show();
    });

    if (localStorage.getItem($element.data('rating-name')) === "true") {
      $question.hide();
      $answer.show();
    } else {
      $answer.hide();
    }
  }

}

$(document).ready(function(){
  Elemental.load($(document));
});
