<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wspd_settings_discount_percentage_position_on_shop');
delete_site_option('wspd_settings_discount_percentage_position_on_shop');
delete_option('wspd_settings_discount_percentage_position_on_product');
delete_site_option('wspd_settings_discount_percentage_position_on_product');
delete_option('wspd_settings_enable_discount_percentage_on_shop');
delete_site_option('wspd_settings_enable_discount_percentage_on_shop');
delete_option('wspd_settings_enable_discount_percentage_color_on_shop');
delete_site_option('wspd_settings_enable_discount_percentage_color_on_shop');
delete_option('wspd_settings_discount_percentage_color_on_shop');
delete_site_option('wspd_settings_discount_percentage_color_on_shop');
delete_option('wspd_settings_discount_percentage_text_on_shop');
delete_site_option('wspd_settings_discount_percentage_text_on_shop');
delete_option('wspd_settings_discount_percentage_css_on_shop');
delete_site_option('wspd_settings_discount_percentage_css_on_shop');
delete_option('wspd_settings_discount_percentage_css_on_sale_flash');
delete_site_option('wspd_settings_discount_percentage_css_on_sale_flash');
delete_option('wspd_settings_enable_discount_percentage_on_sale_flash');
delete_site_option('wspd_settings_enable_discount_percentage_on_sale_flash');
delete_option('wspd_settings_discount_percentage_text_on_sale_flash');
delete_site_option('wspd_settings_discount_percentage_text_on_sale_flash');
delete_option('wspd_settings_enable_discount_percentage_on_product');
delete_site_option('wspd_settings_enable_discount_percentage_on_product');
delete_option('wspd_settings_discount_percentage_text_on_product');
delete_site_option('wspd_settings_discount_percentage_text_on_product');
delete_option('wspd_settings_discount_percentage_css_on_product');
delete_site_option('wspd_settings_discount_percentage_css_on_product');

