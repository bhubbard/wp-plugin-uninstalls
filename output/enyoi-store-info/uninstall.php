<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enyoi_store_info_options');
delete_site_option('enyoi_store_info_options');
delete_option('enyoi_store_info_translation_notice');
delete_site_option('enyoi_store_info_translation_notice');
delete_option('enyoi_store_info_network_options');
delete_site_option('enyoi_store_info_network_options');
delete_option('widget_enyoi_store_info_widget');
delete_site_option('widget_enyoi_store_info_widget');

