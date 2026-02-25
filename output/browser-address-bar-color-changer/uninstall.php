<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('browser_address_bar_color_changer_admin_notice');
delete_site_transient('browser_address_bar_color_changer_admin_notice');

