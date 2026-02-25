<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_current_year_shortcode_option_name');
delete_site_option('wc_current_year_shortcode_option_name');

