<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lightbox_with_ads_option_plugin_type');
delete_site_option('lightbox_with_ads_option_plugin_type');
delete_option('lightbox_with_ads_option_license_key');
delete_site_option('lightbox_with_ads_option_license_key');
delete_option('lightbox_with_ads_option_pc_number_of_images');
delete_site_option('lightbox_with_ads_option_pc_number_of_images');
delete_option('lightbox_with_ads_option_mobile_number_of_images');
delete_site_option('lightbox_with_ads_option_mobile_number_of_images');
delete_option('lightbox_with_ads_option_background_color');
delete_site_option('lightbox_with_ads_option_background_color');
delete_option('lightbox_with_ads_option_arrows_top_margin');
delete_site_option('lightbox_with_ads_option_arrows_top_margin');
delete_option('lightbox_with_ads_option_arrows_color');
delete_site_option('lightbox_with_ads_option_arrows_color');
delete_option('lightbox_with_ads_option_arrows_font_size');
delete_site_option('lightbox_with_ads_option_arrows_font_size');
delete_option('lightbox_with_ads_option_current_img_index_color');
delete_site_option('lightbox_with_ads_option_current_img_index_color');
delete_option('lightbox_with_ads_option_close_button_color');
delete_site_option('lightbox_with_ads_option_close_button_color');
delete_option('lightbox_with_ads_option_caption_font_size');
delete_site_option('lightbox_with_ads_option_caption_font_size');
delete_option('lightbox_with_ads_option_image_index_font_size');
delete_site_option('lightbox_with_ads_option_image_index_font_size');
delete_option('lightbox_with_ads_option_close_button_font_size');
delete_site_option('lightbox_with_ads_option_close_button_font_size');
delete_option('lightbox_with_ads_option_pc_ad_script');
delete_site_option('lightbox_with_ads_option_pc_ad_script');
delete_option('lightbox_with_ads_option_mobile_ad_script');
delete_site_option('lightbox_with_ads_option_mobile_ad_script');
delete_option('lightbox_with_ads_option_logo_width');
delete_site_option('lightbox_with_ads_option_logo_width');
delete_option('lightbox_with_ads_option_logo_height');
delete_site_option('lightbox_with_ads_option_logo_height');
delete_option('lightbox_with_ads_option_logo_image');
delete_site_option('lightbox_with_ads_option_logo_image');
delete_option('lightbox_with_ads_option_license_expire_date');
delete_site_option('lightbox_with_ads_option_license_expire_date');
delete_option('lightbox_with_ads_option_plugin_trial_end_date');
delete_site_option('lightbox_with_ads_option_plugin_trial_end_date');
delete_option('lightbox_with_ads_option_license_status');
delete_site_option('lightbox_with_ads_option_license_status');
delete_option('lightbox_with_ads_option_license_last_checked');
delete_site_option('lightbox_with_ads_option_license_last_checked');
delete_option('lightbox_with_ads_option_license_type');
delete_site_option('lightbox_with_ads_option_license_type');

