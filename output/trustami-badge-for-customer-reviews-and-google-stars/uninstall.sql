-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WC_Trustami_Settings_Tab_footer_hook', 'WC_Trustami_Settings_Tab_header_hook', 'WC_Trustami_Settings_Tab_product_hook', 'WC_Trustami_Settings_Tab_trustami_profile_id', 'WC_Trustami_Settings_Tab_text_badge', 'WC_Trustami_Settings_Tab_overlay_badge', 'WC_Trustami_Settings_Tab_overlay_frame', 'WC_Trustami_Settings_Tab_overlay_list', 'WC_Trustami_Settings_Tab_overlay_sticker', 'WC_Trustami_Settings_Tab_overlay_button', 'WC_Trustami_Settings_Tab_overlay_social', 'WC_Trustami_Settings_Tab_overlay_duo', 'WC_Trustami_Settings_Tab_cus_data_att', 'WC_Trustami_Settings_Tab_trustami_footer_display', 'WC_Trustami_Settings_Tab_overlay_shopak', 'WC_Trustami_Settings_Tab_overlay_stars', 'WC_Trustami_Settings_Tab_trustami_header_display', 'WC_Trustami_Settings_Tab_trustami_product_display');

