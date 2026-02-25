<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('webshare_list');
delete_site_option('webshare_list');
delete_option('webshare_settings');
delete_site_option('webshare_settings');

