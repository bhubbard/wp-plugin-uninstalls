<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('injection_head_start');
delete_site_option('injection_head_start');
delete_option('injection_head_end');
delete_site_option('injection_head_end');
delete_option('injection_footer_start');
delete_site_option('injection_footer_start');
delete_option('injection_footer_end');
delete_site_option('injection_footer_end');

