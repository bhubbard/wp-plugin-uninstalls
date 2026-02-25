<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('debug_bar_rewrite_rules_installed');
delete_site_option('debug_bar_rewrite_rules_installed');
delete_option('debug_bar_rewrite_rules_filters_list');
delete_site_option('debug_bar_rewrite_rules_filters_list');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

