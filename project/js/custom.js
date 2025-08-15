function contsop(){
    window.location.href='index.php';
}


function userRegister() {
    jQuery('.field_error').html('');
    var name=jQuery("#name").val();
    var email=jQuery("#email").val();
    var mobile=jQuery("#mobile").val();
    var password=jQuery("#password").val();
    var is_error='';

    if(name==""){
        jQuery('#name_error').html('Please enter name');
        is_error='yes';
    }if(email==""){
        jQuery('#email_error').html('Please enter email');
        is_error='yes';
    }if(mobile==""){
        jQuery('#mobile_error').html('Please enter mobile');
        is_error='yes';
    }if(password==""){
        jQuery('#password_error').html('Please enter password');
        is_error='yes';
    }

    if(is_error==""){
        jQuery.ajax({
            url:'register_submit.php',
            type:'post',
            data:'name='+name+'&email='+email+'&mobile='+mobile+'&password='+password,
            success:function(result){
                result=result.trim();
                if(result=='email_present'){
					jQuery('#email_error').html('Email id already present');
				}
				if(result=='insert'){
					window.location.href= 'login.php';
				}
            }	
        });
    }
}


function usersLogin() {
    jQuery('.field_error').html('');
    var email=jQuery("#login_email").val();
    var password=jQuery("#login_password").val();
    var is_error='';

    if(email==""){
        jQuery('#login_email_error').html('Please enter email');
        is_error='yes';
    }if(password==""){
        jQuery('#login_password_error').html('Please enter password');
        is_error='yes';
    }

    if(is_error==""){
        jQuery.ajax({
            url:'login_submit.php',
            type:'post',
            data:'email='+email+'&password='+password,
            success:function(result){
                result=result.trim();
                if(result=='wrong'){
					jQuery('.login_msg p').html('Please enter valid login details');
				}
				if(result=='valid'){
					window.location.href= 'index.php';
				}
            }	
        });
    }
}

function usercLogin() {
    jQuery('.field_error').html('');
    var email=jQuery("#login_email").val();
    var password=jQuery("#login_password").val();
    var is_error='';

    if(email==""){
        jQuery('#login_email_error').html('Please enter email');
        is_error='yes';
    }if(password==""){
        jQuery('#login_password_error').html('Please enter password');
        is_error='yes';
    }

    if(is_error==""){
        jQuery.ajax({
            url:'login_submit.php',
            type:'post',
            data:'email='+email+'&password='+password,
            success:function(result){
                if(result=='wrong'){
					jQuery('.login_msg p').html('Please enter valid login details');
				}
				if(result=='valid'){
					window.location.href='checkout.php';
				}
            }	
        });
    }
}



function sendMessage(){
    var name=jQuery("#name").val();
    var email=jQuery("#email").val();
    var mobile=jQuery("#mobile").val();
    var message=jQuery("#message").val();

    if(name==""){
        alert('Please enter name');
    }else if(email==""){
        alert('Please enter email');
    }else if(mobile==""){
        alert('Please enter mobile');
    }else if(message==""){
        alert('Please enter message');
    }else{
        jQuery.ajax({
            url:'send_message.php',
            type:'post',
            data:'name='+name+'&email='+email+'&mobile='+mobile+'&message='+message,
            success:function(result){
                alert(result);
            }	
        });
    }
}

function sendMail(){
    var email=jQuery("#email").val();

    if(email==""){
        alert('Please enter email');
    }else{
        jQuery.ajax({
            url:'send_mail.php',
            type:'post',
            data:'email='+email,
            success:function(result){
                alert(result);
                window.location.href=window.location.href;
            }	
        });
    }
}



function manageCart(pid,type){
    if(qty=''){
        qty=1;
    }
    if(type=='update'){
        var qty=jQuery("#"+pid+"qty").val();
    }else{
        var qty=jQuery("#qty").val();
    }


    jQuery.ajax({
        url:'manageCart.php',
        type:'post',
        data:'pid='+pid+'&qty='+qty+'&type='+type,
        success:function(result){
            if(type=='update'||type=='remove'){
                window.location.href=window.location.href;
            }
            
            jQuery('.htc__qua').html(result);
        }	
    });
}

function sortProductDrop(cat_id,site_path){
	var sort_product_id=jQuery('#sort_product_id').val();
	window.location.href=site_path+"categories.php?id="+cat_id+"&sort="+sort_product_id;
}


function wishlistManage(pid,type){
	jQuery.ajax({
		url:'wishlist_manage.php',
		type:'post',
		data:'pid='+pid+'&type='+type,
		success:function(result){
			result=result.trim();
			if(result=='not_login'){
				window.location.href='login.php';
			}
		}	
	});	
}

