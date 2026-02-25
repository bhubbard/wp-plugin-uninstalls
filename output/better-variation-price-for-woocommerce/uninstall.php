<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbvp_display');
delete_site_option('wbvp_display');
delete_option('wbvp_better_variation');
delete_site_option('wbvp_better_variation');
delete_option('wbvp_hide_reset');
delete_site_option('wbvp_hide_reset');
delete_option('wbvp_format');
delete_site_option('wbvp_format');

