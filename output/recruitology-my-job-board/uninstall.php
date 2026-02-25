<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('recruitology_company_data');
delete_site_option('recruitology_company_data');
delete_option('recruitology_jobspage_postid');
delete_site_option('recruitology_jobspage_postid');
delete_option('recruitology_custom_settings');
delete_site_option('recruitology_custom_settings');
delete_option('recruitology_api_key');
delete_site_option('recruitology_api_key');

