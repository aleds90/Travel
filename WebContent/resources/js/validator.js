(function($,W,D)
{
    var JQUERY4U = {};

    JQUERY4U.UTIL =
    {
        setupFormValidation: function()
        {
       
            //form validation rules
            $("#infoform").validate({
            	   errorClass: "my-error-class",
            	errorPlacement: function(error, element) {         
            	       error.insertBefore(element);
            	   },
                rules: {
                 username: "required",
                 confirmEmail: {
                     email : true,
                     equalTo : "#email"
                 },
                 phoneNumber: {
                     required: true,
                     number: true
                 },
                 password: {
                     required: true,
                     minlength: 8
                 },
                 confirmPassword: {
                     minlength : 8,
                     equalTo : "#password"
                 },
                 firstname: "required",
                 lastname: "required",
                 birthday: "required",
                 country: "required",
                 email: {
                       required: true,
                       email: true
                 },
                },
            
                submitHandler: function(form) {
                    form.submit();
                }
            });
        }
    }

    //when the dom has loaded setup form validation rules
    $(D).ready(function($) {
        JQUERY4U.UTIL.setupFormValidation();
    });
    
    

})(jQuery, window, document);

