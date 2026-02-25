<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('actd-general-settings');
delete_site_option('actd-general-settings');
delete_option('actd-post-type-settings');
delete_site_option('actd-post-type-settings');
delete_option('act_flush_rewrite_rules_flag');
delete_site_option('act_flush_rewrite_rules_flag');

