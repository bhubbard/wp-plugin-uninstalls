<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_special_footer_timestamp');
delete_site_option('wc_special_footer_timestamp');
delete_option('wc_special_footer_cache');
delete_site_option('wc_special_footer_cache');

