<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tracking_code_for_linkedin_insights_tag');
delete_site_option('tracking_code_for_linkedin_insights_tag');

