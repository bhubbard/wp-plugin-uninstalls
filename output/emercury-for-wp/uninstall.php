<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emercury_form_add_subscriber_comment');
delete_site_option('emercury_form_add_subscriber_comment');
delete_option('emercury_form_select_list_subscriber_comment');
delete_site_option('emercury_form_select_list_subscriber_comment');
delete_option('emercury_form_add_subscriber_signup');
delete_site_option('emercury_form_add_subscriber_signup');
delete_option('emercury_form_select_list_subscriber_signup');
delete_site_option('emercury_form_select_list_subscriber_signup');
delete_option('emercury_form_email');
delete_site_option('emercury_form_email');
delete_option('emercury_forms_sec_id');
delete_site_option('emercury_forms_sec_id');

