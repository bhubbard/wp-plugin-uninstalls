-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adxbyms_enabled', 'adxbyms_custom_enabled', 'adxbyms_header_code', 'adxbyms_footer_code', 'adxbyms_ads_txt_code', 'adxbyms_popup_scroll_trigger', 'adxbyms_anchor_position', 'adxbyms_ads_txt_enabled', 'adxbyms_anchor_enabled', 'adxbyms_anchor_network_code', 'adxbyms_ad2_enabled', 'adxbyms_ad2_network_code', 'adxbyms_ad2_keywords', 'adxbyms_slot_enabled', 'adxbyms_interstitial_enabled', 'adxbyms_interstitial_network_code', 'adxbyms_offerwall_onscroll_enabled', 'adxbyms_offerwall_onscroll_network_code', 'adxbyms_offerwall_onscroll_logo_url', 'adxbyms_popup_enabled', 'adxbyms_popup_network_code', 'adxbyms_popup_option');

