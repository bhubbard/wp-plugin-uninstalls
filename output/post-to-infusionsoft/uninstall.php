<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pti_account_name');
delete_site_option('pti_account_name');
delete_option('pti_api_key');
delete_site_option('pti_api_key');
delete_option('pti_field_value');
delete_site_option('pti_field_value');
delete_option('form_bgcolor');
delete_site_option('form_bgcolor');
delete_option('submitbtn_text');
delete_site_option('submitbtn_text');
delete_option('submitbtn_color');
delete_site_option('submitbtn_color');
delete_option('submitbtn_bgcolor');
delete_site_option('submitbtn_bgcolor');
delete_option('submitbtn_bghovercolor');
delete_site_option('submitbtn_bghovercolor');
delete_option('logo-option');
delete_site_option('logo-option');
delete_option('form_heading');
delete_site_option('form_heading');
delete_option('message_box');
delete_site_option('message_box');

