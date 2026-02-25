<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('canonical_filters_to_remove');
delete_site_option('canonical_filters_to_remove');
delete_option('template_redirect_filters_to_remove');
delete_site_option('template_redirect_filters_to_remove');
delete_option('FIXMTPLREDIR_promote');
delete_site_option('FIXMTPLREDIR_promote');
delete_option('isDebug');
delete_site_option('isDebug');
delete_option('rewrite_rules_filters_to_remove');
delete_site_option('rewrite_rules_filters_to_remove');

