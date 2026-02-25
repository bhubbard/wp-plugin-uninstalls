<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xcart_image_box_size');
delete_site_option('xcart_image_box_size');
delete_option('xcart_store_url');
delete_site_option('xcart_store_url');
delete_option('xcart_template');
delete_site_option('xcart_template');
delete_option('xcart_sso_key');
delete_site_option('xcart_sso_key');
delete_option('xcart_store_page_id');
delete_site_option('xcart_store_page_id');

