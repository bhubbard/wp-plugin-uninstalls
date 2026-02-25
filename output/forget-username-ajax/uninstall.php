<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fu_mail_subject');
delete_site_option('fu_mail_subject');
delete_option('fu_mail_header');
delete_site_option('fu_mail_header');
delete_option('fu_mail_footer');
delete_site_option('fu_mail_footer');
delete_option('fu_submit_val');
delete_site_option('fu_submit_val');
delete_option('fu_mail_body_lbl');
delete_site_option('fu_mail_body_lbl');
delete_option('fu_mail_success');
delete_site_option('fu_mail_success');
delete_option('fu_mail_error');
delete_site_option('fu_mail_error');
delete_option('fu_mail_email_not_exist');
delete_site_option('fu_mail_email_not_exist');

