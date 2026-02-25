<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dizetc_defcon_enable_post');
delete_site_option('dizetc_defcon_enable_post');
delete_option('dizetc_defcon_enable_page');
delete_site_option('dizetc_defcon_enable_page');
delete_option('dizetc_defcon_content_post');
delete_site_option('dizetc_defcon_content_post');
delete_option('dizetc_defcon_content_page');
delete_site_option('dizetc_defcon_content_page');

