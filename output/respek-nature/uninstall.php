<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('respek_auth_token');
delete_site_option('respek_auth_token');
delete_option('respek_api_url');
delete_site_option('respek_api_url');
delete_option('respek_button_template');
delete_site_option('respek_button_template');
delete_option('respek_gif_feature');
delete_site_option('respek_gif_feature');
delete_option('respek_compensation_count');
delete_site_option('respek_compensation_count');
delete_option('respek_impact');
delete_site_option('respek_impact');
delete_option('respek_popup_template');
delete_site_option('respek_popup_template');
delete_option('respek_timestamp_popup');
delete_site_option('respek_timestamp_popup');
delete_option('respek_popup_placement');
delete_site_option('respek_popup_placement');
delete_option('respek_is_active');
delete_site_option('respek_is_active');
delete_option('respek_checkout_placement');
delete_site_option('respek_checkout_placement');
delete_option('respek_collections');
delete_site_option('respek_collections');
delete_option('respek_matching_collections');
delete_site_option('respek_matching_collections');
delete_option('respek_on_us_collections');
delete_site_option('respek_on_us_collections');
delete_option('respek_show_popup');
delete_site_option('respek_show_popup');
delete_option('respek_popup_title');
delete_site_option('respek_popup_title');
delete_option('respek_popup_message');
delete_site_option('respek_popup_message');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('extra_post_info');
delete_site_option('extra_post_info');

