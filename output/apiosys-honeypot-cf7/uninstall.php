<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apiosys_honeypot_cf7_settings');
delete_site_option('apiosys_honeypot_cf7_settings');

