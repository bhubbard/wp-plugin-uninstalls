<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bip_updated');
delete_site_option('bip_updated');
delete_option('bip_terms');
delete_site_option('bip_terms');
delete_option('bip_post_type');
delete_site_option('bip_post_type');
delete_option('bip_image_title');
delete_site_option('bip_image_title');
delete_option('bip_post_status');
delete_site_option('bip_post_status');
delete_option('bip_taxonomy');
delete_site_option('bip_taxonomy');
delete_option('bip_image_content');
delete_site_option('bip_image_content');
delete_option('bip_image_content_size');
delete_site_option('bip_image_content_size');

