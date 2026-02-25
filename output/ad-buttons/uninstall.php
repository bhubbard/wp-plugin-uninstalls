<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('widget_adbuttons_cfg');
delete_site_option('widget_adbuttons_cfg');
delete_option('ad_buttons_version');
delete_site_option('ad_buttons_version');
delete_option('ad_buttons_db_version');
delete_site_option('ad_buttons_db_version');

