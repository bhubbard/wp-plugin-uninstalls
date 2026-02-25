<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mail2many_api_key');
delete_site_option('mail2many_api_key');
delete_option('mail2many_api_server');
delete_site_option('mail2many_api_server');
delete_option('mail2many_form_privacy_text');
delete_site_option('mail2many_form_privacy_text');

