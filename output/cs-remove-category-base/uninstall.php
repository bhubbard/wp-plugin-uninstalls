<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cs_remove_category_base_rewrite_rules_flush');
delete_site_option('cs_remove_category_base_rewrite_rules_flush');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

