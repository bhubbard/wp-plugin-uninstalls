<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('afmenu_styles');
delete_site_option('afmenu_styles');
delete_option('afmenu_page_data');
delete_site_option('afmenu_page_data');

