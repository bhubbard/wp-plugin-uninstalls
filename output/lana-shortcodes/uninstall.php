<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lana_shortcodes_bootstrap_version');
delete_site_option('lana_shortcodes_bootstrap_version');
delete_option('lana_shortcodes_bootstrap_load');
delete_site_option('lana_shortcodes_bootstrap_load');

