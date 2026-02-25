<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yeem_your_name');
delete_site_option('yeem_your_name');
delete_option('yeem_sender_email_address');
delete_site_option('yeem_sender_email_address');
delete_option('yeem_email_subject');
delete_site_option('yeem_email_subject');
delete_option('yeem_confirmation_msg');
delete_site_option('yeem_confirmation_msg');
delete_option('yeem_email_msg');
delete_site_option('yeem_email_msg');
delete_option('yeem_form_elements');
delete_site_option('yeem_form_elements');

