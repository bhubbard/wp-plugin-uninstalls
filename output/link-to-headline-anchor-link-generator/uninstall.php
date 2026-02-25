<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lthalg_settings');
delete_site_option('lthalg_settings');
delete_option('lthalg_show_icon');
delete_site_option('lthalg_show_icon');

