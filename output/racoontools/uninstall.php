<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_settings_tab_racoontools_login_logo_url');
delete_site_option('wc_settings_tab_racoontools_login_logo_url');
delete_option('wc_settings_tab_racoontools_admin_footer_text');
delete_site_option('wc_settings_tab_racoontools_admin_footer_text');
delete_option('wc_settings_tab_racoontools_breadcrumb_home');
delete_site_option('wc_settings_tab_racoontools_breadcrumb_home');
delete_option('wc_settings_tab_racoontools_breadcrumb_separator');
delete_site_option('wc_settings_tab_racoontools_breadcrumb_separator');
delete_option('wc_settings_tab_racoontools_breadcrumb_home_link');
delete_site_option('wc_settings_tab_racoontools_breadcrumb_home_link');
delete_option('wc_settings_tab_racoontools_hide_breadcrumb');
delete_site_option('wc_settings_tab_racoontools_hide_breadcrumb');
delete_option('wc_settings_tab_racoontools_empty_cart_text');
delete_site_option('wc_settings_tab_racoontools_empty_cart_text');
delete_option('wc_settings_tab_racoontools_hide_shipping_calc');
delete_site_option('wc_settings_tab_racoontools_hide_shipping_calc');
delete_option('wc_settings_tab_racoontools_remove_company_field');
delete_site_option('wc_settings_tab_racoontools_remove_company_field');
delete_option('wc_settings_tab_racoontools_phone_optional');
delete_site_option('wc_settings_tab_racoontools_phone_optional');
delete_option('wc_settings_tab_racoontools_min_password_strength');
delete_site_option('wc_settings_tab_racoontools_min_password_strength');
delete_option('woocommerce_price_display_suffix');
delete_site_option('woocommerce_price_display_suffix');
delete_option('wc_settings_tab_racoontools_price_suffix_selector');
delete_site_option('wc_settings_tab_racoontools_price_suffix_selector');
delete_option('wc_settings_tab_racoontools_price_suffix_link');
delete_site_option('wc_settings_tab_racoontools_price_suffix_link');
delete_option('wc_settings_tab_racoontools_hide_shipping_when_free');
delete_site_option('wc_settings_tab_racoontools_hide_shipping_when_free');
delete_option('wc_settings_tab_racoontools_nr_products');
delete_site_option('wc_settings_tab_racoontools_nr_products');
delete_option('wc_settings_tab_racoontools_hide_show_results');
delete_site_option('wc_settings_tab_racoontools_hide_show_results');
delete_option('wc_settings_tab_racoontools_category_count');
delete_site_option('wc_settings_tab_racoontools_category_count');
delete_option('wc_settings_tab_racoontools_product_orderby');
delete_site_option('wc_settings_tab_racoontools_product_orderby');
delete_option('wc_settings_tab_racoontools_show_quantities');
delete_site_option('wc_settings_tab_racoontools_show_quantities');
delete_option('wc_settings_tab_racoontools_product_meta');
delete_site_option('wc_settings_tab_racoontools_product_meta');
delete_option('wc_settings_tab_racoontools_tab_desc');
delete_site_option('wc_settings_tab_racoontools_tab_desc');
delete_option('wc_settings_tab_racoontools_tab_reviews');
delete_site_option('wc_settings_tab_racoontools_tab_reviews');
delete_option('wc_settings_tab_racoontools_tab_additional_information');
delete_site_option('wc_settings_tab_racoontools_tab_additional_information');
delete_option('wc_settings_tab_racoontools_placeholder');
delete_site_option('wc_settings_tab_racoontools_placeholder');

