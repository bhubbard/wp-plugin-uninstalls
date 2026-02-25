<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inq_header');
delete_site_option('inq_header');
delete_option('inq_item_lable');
delete_site_option('inq_item_lable');
delete_option('inq_email_feild_lable');
delete_site_option('inq_email_feild_lable');
delete_option('inq_name_feild_lable');
delete_site_option('inq_name_feild_lable');
delete_option('inq_message_feild_lable');
delete_site_option('inq_message_feild_lable');
delete_option('inq_email_to');
delete_site_option('inq_email_to');
delete_option('inq_suc_msg');
delete_site_option('inq_suc_msg');
delete_option('inq_err_captcha');
delete_site_option('inq_err_captcha');
delete_option('inq_err_email');
delete_site_option('inq_err_email');
delete_option('inq_err_name');
delete_site_option('inq_err_name');
delete_option('inq_form_style');
delete_site_option('inq_form_style');

