<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wprc_credit_text');
delete_site_option('wprc_credit_text');
delete_option('wp_credit_text');
delete_site_option('wp_credit_text');

