<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ksr_deletion');
delete_site_option('ksr_deletion');
delete_option('ksr_bg_color');
delete_site_option('ksr_bg_color');
delete_option('ksr_mouseenter_color');
delete_site_option('ksr_mouseenter_color');
delete_option('ksr_currentrate_color');
delete_site_option('ksr_currentrate_color');
delete_option('ksr_star_size');
delete_site_option('ksr_star_size');
delete_option('ksr_star_design');
delete_site_option('ksr_star_design');

