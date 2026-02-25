<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vison_ai_token');
delete_site_option('vison_ai_token');
delete_option('vison_ai_domain');
delete_site_option('vison_ai_domain');
delete_option('vison_ai_analysis_url');
delete_site_option('vison_ai_analysis_url');
delete_option('vison_ai_script_option');
delete_site_option('vison_ai_script_option');

