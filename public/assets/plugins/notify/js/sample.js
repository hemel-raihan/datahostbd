// Generated by CoffeeScript 2.1.0
(function () {
  $(function () {
    $.growl({
      title: "Growl",
      message: "Hi I'm Datahostit"
    });

	 $('.error').click(function (event) {
      event.preventDefault();
      event.stopPropagation();
      return $.growl.error({
        message: "please check Your details ...file is missing"
      });
    });
    $('.notice').click(function (event) {
      event.preventDefault();
      event.stopPropagation();
      return $.growl.notice({
        message: "You have 4 notification"
      });
    });
    return $('.warning').click(function (event) {
      event.preventDefault();
      event.stopPropagation();
      return $.growl.warning({
        message: "read all details carefully"
      });
    });
  });
}).call(this);

		 function not1(){
            notif({
				msg: "<b>Success:</b> Well done Details Submitted Successfully",
				type: "success"
			});
        }
        function not2(){
            notif({
				msg: "<b>Oops!</b> An Error Occurred",
				type: "error",
				position: "center"
			});
        }
        function not3(){
            notif({
				type: "warning",
				msg: "<b>Warning:</b> Something Went Wrong",
				position: "left"
			});
        }
        function not4(){
            notif({
				type: "info",
				msg: "<b>Info: </b>Some info here.",
				width: "all",
				height: 70,
				position: "center"
			});
        }
        function not5(){
            notif({
				type: "error",
				msg: "<b>Error: </b>This error will stay here until you click it.",
				position: "center",
				width: 500,
				height: 60,
				autohide: false
			});
        }
		function not6(){
			notif({
				type: "warning",
				msg: "Opacity is cool!",
				position: "center",
				opacity: 0.8
			});
		}
