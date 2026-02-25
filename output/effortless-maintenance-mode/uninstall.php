<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emmp_active');
delete_site_option('emmp_active');
delete_option('emmp_custom_html');
delete_site_option('emmp_custom_html');

