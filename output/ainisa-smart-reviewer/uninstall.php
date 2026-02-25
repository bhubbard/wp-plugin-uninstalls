<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('ainisa_smart_reviewer_options');
delete_site_option('ainisa_smart_reviewer_options');

// Delete Transients
delete_transient('ainisa_smart_reviewer_options');
delete_site_transient('ainisa_smart_reviewer_options');

