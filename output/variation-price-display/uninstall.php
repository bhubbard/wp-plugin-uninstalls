<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product_share_option');
delete_site_option('product_share_option');
delete_option('variation_price_display_option');
delete_site_option('variation_price_display_option');
delete_option('variation_price_display_option_advanced');
delete_site_option('variation_price_display_option_advanced');
delete_option('variation_price_display_license');
delete_site_option('variation_price_display_license');
delete_option('vpd_price_types');
delete_site_option('vpd_price_types');
delete_option('vpd_from_before_min_price');
delete_site_option('vpd_from_before_min_price');
delete_option('vpd_up_to_before_max_price');
delete_site_option('vpd_up_to_before_max_price');
delete_option('vpd_custom_price_text');
delete_site_option('vpd_custom_price_text');
delete_option('vpd_change_price');
delete_site_option('vpd_change_price');
delete_option('vpd_hide_default_price');
delete_site_option('vpd_hide_default_price');
delete_option('vpd_hide_reset_link');
delete_site_option('vpd_hide_reset_link');
delete_option('vpd_format_sale_price');
delete_site_option('vpd_format_sale_price');
delete_option('vpd_display_condition');
delete_site_option('vpd_display_condition');
delete_option('vpd_display_variation_sku');
delete_site_option('vpd_display_variation_sku');
delete_option('vpd_display_discount_badge');
delete_site_option('vpd_display_discount_badge');
delete_option('vpd_disable_price_format_for_admin');
delete_site_option('vpd_disable_price_format_for_admin');
delete_option('vpd_license_key_text');
delete_site_option('vpd_license_key_text');
delete_option('wpx_notice_dismissed_date');
delete_site_option('wpx_notice_dismissed_date');

