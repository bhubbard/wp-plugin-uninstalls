<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wh_loader_brand_name');
delete_site_option('wh_loader_brand_name');
delete_option('wh_loader_bg_color');
delete_site_option('wh_loader_bg_color');
delete_option('wh_loader_text_color');
delete_site_option('wh_loader_text_color');
delete_option('wh_loader_spinner_active');
delete_site_option('wh_loader_spinner_active');

