<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmp_selected_footer');
delete_site_option('wpmp_selected_footer');
delete_option('wpmp_footer_style');
delete_site_option('wpmp_footer_style');
delete_option('wpmp-selected-footer');
delete_site_option('wpmp-selected-footer');
delete_option('wpmp-footer-style');
delete_site_option('wpmp-footer-style');

