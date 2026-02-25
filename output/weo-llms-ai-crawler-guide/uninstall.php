<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('weo_llms_intro');
delete_site_option('weo_llms_intro');
delete_option('weo_llms_outro');
delete_site_option('weo_llms_outro');
delete_option('weo_llms_post_types');
delete_site_option('weo_llms_post_types');
delete_option('weo_llms_add_to_robots');
delete_site_option('weo_llms_add_to_robots');

// Delete Transients
delete_transient('weo_llms_content');
delete_site_transient('weo_llms_content');

