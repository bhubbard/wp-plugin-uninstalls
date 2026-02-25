<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dn_popup_settings');
delete_site_option('dn_popup_settings');
delete_option('dn_popup-items');
delete_site_option('dn_popup-items');

