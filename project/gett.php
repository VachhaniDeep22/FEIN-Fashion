<?php 
require('top.php');


$sql="select * from users";
$res=mysqli_query($con,$sql);
    
?>
<style>
    .inbox{
        width: 650px;
    }
    #nm{
        background: #000;
    }
    .edit1{
        background: black;
        color: #fff;
        position: absolute;
        margin-left: 80%;
        top: 10px;
        height: 30px;
        width: 50px;
        text-align: center;
        
    }
    .edit2{
        background: black;
        color: #fff;
        position: absolute;
        margin-left: 80%;
        bottom: 190px;
        height: 30px;
        width: 50px;
        text-align: center;
        
    }
</style>

<!-- Start Bradcaump area -->
<div class="ht__bradcaump__area" style="background: rgba(0, 0, 0, 0) url(images/bg/c3.jpg) no-repeat scroll center center / cover ;">
    <div class="ht__bradcaump__wrap">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="bradcaump__inner">
                        <nav class="bradcaump-inner">
                            <a class="breadcrumb-item" href="index.php">Home</a>
                            <span class="brd-separetor"><i class="zmdi zmdi-chevron-right"></i></span>
                            <span class="breadcrumb-item active">Profile</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Bradcaump area -->

<section class="htc__contact__area ptb--100 bg__white">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="contact-form-wrap mt--60">
                    <div class="col-xs-12">
                        <div class="contact-title">
                            <h2 class="title__line--6">Profile</h2>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <form id="login-form" method="post">
                            <div class="single-contact-form">
                                <div class="contact-box name">
                                <?php 
                            $i=1;
                            while($row=mysqli_fetch_assoc($res)){ ?>
                            <div >
                                <div class="inbox">
                                User Name<input type="box" name="" id="nm" value="<?php echo $row['name']?>" disabled>   
                                </div>
                                <a href="profile.php" class="edit1"> EDIT</a><br>

                                
                                <div class="inbox">
                                Password &nbsp;<input type="text" name="" id="nm" value="<?php echo $row['password']?>" disabled > 
                                </div>
                                <a href="password.php" class="edit2"> EDIT</a><br>
                                
                                <div class="inbox">
                                Email &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="" id="nm" value="<?php echo $row['email']?>" disabled>  
                                </div><br>

                                <div class="inbox">
                                Mobile No.<input type="text" name="" id="nm" value="<?php echo $row['mobile']?>" disabled> 
                                </div>
                                
                            </div>
                            <?php } ?>
                            </div>
                                <span class="field_error" id="name_error"></span>
                            </div>
                        </form>
                    </div>
                </div> 
            </div>
        </div>
    </div>

</section>
<script>
    function update_password(){
			jQuery('.field_error').html('');
			var current_password=jQuery('#current_password').val();
			var new_password=jQuery('#new_password').val();
			var confirm_new_password=jQuery('#confirm_new_password').val();
			var is_error='';
			if(current_password==''){
				jQuery('#current_password_error').html('Please enter password');
				is_error='yes';
			}if(new_password==''){
				jQuery('#new_password_error').html('Please enter password');
				is_error='yes';
			}if(confirm_new_password==''){
				jQuery('#confirm_new_password_error').html('Please enter password');
				is_error='yes';
			}
			
			if(new_password!='' && confirm_new_password!='' && new_password!=confirm_new_password){
				jQuery('#confirm_new_password_error').html('Please enter same password');
				is_error='yes';
			}
			
			if(is_error==''){
				jQuery('#btn_update_password').html('Please wait...');
				jQuery('#btn_update_password').attr('disabled',true);
				jQuery.ajax({
					url:'update_password.php',
					type:'post',
					data:'current_password='+current_password+'&new_password='+new_password,
					success:function(result){
						jQuery('#current_password_error').html(result);
						jQuery('#btn_update_password').html('Update');
						jQuery('#btn_update_password').attr('disabled',false);
						jQuery('#frmPassword')[0].reset();
					}
				})
			}
			
		}
</script>

<?php require('footer.php')?>  