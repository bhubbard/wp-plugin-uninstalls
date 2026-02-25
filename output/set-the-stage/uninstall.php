<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('drgnff_wp_stage_switcher__default_environment');
delete_site_option('drgnff_wp_stage_switcher__default_environment');
delete_option('drgnff_wp_stage_switcher__environments');
delete_site_option('drgnff_wp_stage_switcher__environments');

