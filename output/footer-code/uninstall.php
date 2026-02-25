<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('footer_code');
delete_site_option('footer_code');
delete_option('footer-code');
delete_site_option('footer-code');

