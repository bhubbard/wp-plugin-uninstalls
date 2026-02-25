<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aquilaLogoSettings');
delete_site_option('aquilaLogoSettings');
delete_option('aquilaColourSettings');
delete_site_option('aquilaColourSettings');
delete_option('aquila_settings');
delete_site_option('aquila_settings');
delete_option('media_selector_attachment_id');
delete_site_option('media_selector_attachment_id');
delete_option('aquilaAdminbarSettings');
delete_site_option('aquilaAdminbarSettings');

