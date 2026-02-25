<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WC_Trustami_Settings_Tab_footer_hook');
delete_site_option('WC_Trustami_Settings_Tab_footer_hook');
delete_option('WC_Trustami_Settings_Tab_header_hook');
delete_site_option('WC_Trustami_Settings_Tab_header_hook');
delete_option('WC_Trustami_Settings_Tab_product_hook');
delete_site_option('WC_Trustami_Settings_Tab_product_hook');
delete_option('WC_Trustami_Settings_Tab_trustami_profile_id');
delete_site_option('WC_Trustami_Settings_Tab_trustami_profile_id');
delete_option('WC_Trustami_Settings_Tab_text_badge');
delete_site_option('WC_Trustami_Settings_Tab_text_badge');
delete_option('WC_Trustami_Settings_Tab_overlay_badge');
delete_site_option('WC_Trustami_Settings_Tab_overlay_badge');
delete_option('WC_Trustami_Settings_Tab_overlay_frame');
delete_site_option('WC_Trustami_Settings_Tab_overlay_frame');
delete_option('WC_Trustami_Settings_Tab_overlay_list');
delete_site_option('WC_Trustami_Settings_Tab_overlay_list');
delete_option('WC_Trustami_Settings_Tab_overlay_sticker');
delete_site_option('WC_Trustami_Settings_Tab_overlay_sticker');
delete_option('WC_Trustami_Settings_Tab_overlay_button');
delete_site_option('WC_Trustami_Settings_Tab_overlay_button');
delete_option('WC_Trustami_Settings_Tab_overlay_social');
delete_site_option('WC_Trustami_Settings_Tab_overlay_social');
delete_option('WC_Trustami_Settings_Tab_overlay_duo');
delete_site_option('WC_Trustami_Settings_Tab_overlay_duo');
delete_option('WC_Trustami_Settings_Tab_cus_data_att');
delete_site_option('WC_Trustami_Settings_Tab_cus_data_att');
delete_option('WC_Trustami_Settings_Tab_trustami_footer_display');
delete_site_option('WC_Trustami_Settings_Tab_trustami_footer_display');
delete_option('WC_Trustami_Settings_Tab_overlay_shopak');
delete_site_option('WC_Trustami_Settings_Tab_overlay_shopak');
delete_option('WC_Trustami_Settings_Tab_overlay_stars');
delete_site_option('WC_Trustami_Settings_Tab_overlay_stars');
delete_option('WC_Trustami_Settings_Tab_trustami_header_display');
delete_site_option('WC_Trustami_Settings_Tab_trustami_header_display');
delete_option('WC_Trustami_Settings_Tab_trustami_product_display');
delete_site_option('WC_Trustami_Settings_Tab_trustami_product_display');

