<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slider_templates_logged_in');
delete_site_option('slider_templates_logged_in');
delete_option('slider_templates_is_premium');
delete_site_option('slider_templates_is_premium');
delete_option('slider_templates_email');
delete_site_option('slider_templates_email');
delete_option('slider_templates_connection_agree');
delete_site_option('slider_templates_connection_agree');
delete_option('slider_templates_password');
delete_site_option('slider_templates_password');
delete_option('slider_templates_all_templates');
delete_site_option('slider_templates_all_templates');
delete_option('slider_templates_download_history');
delete_site_option('slider_templates_download_history');

