<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ncmwcp1802_upsell_settings_type');
delete_site_option('ncmwcp1802_upsell_settings_type');
delete_option('ncmwcp1802_upsell_settings_only_product_page');
delete_site_option('ncmwcp1802_upsell_settings_only_product_page');
delete_option('ncmwcp1802_upsell_settings_title');
delete_site_option('ncmwcp1802_upsell_settings_title');
delete_option('ncmwcp1802_upsell_settings_subtitle');
delete_site_option('ncmwcp1802_upsell_settings_subtitle');
delete_option('ncmwcp1802_upsell_settings_hide_out_of_stock');
delete_site_option('ncmwcp1802_upsell_settings_hide_out_of_stock');
delete_option('ncmwcp1802_upsell_settings_show_label_for_backorders');
delete_site_option('ncmwcp1802_upsell_settings_show_label_for_backorders');

