<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rusty_topbar_active');
delete_site_option('rusty_topbar_active');
delete_option('rusty_topbar_bg');
delete_site_option('rusty_topbar_bg');
delete_option('rusty_topbar_color');
delete_site_option('rusty_topbar_color');
delete_option('rusty_topbar_scroll');
delete_site_option('rusty_topbar_scroll');
delete_option('rusty_topbar_text');
delete_site_option('rusty_topbar_text');

