-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsp_lcseo_businesstype', 'wpsp_lbs_name', 'wpsp_lbs_straddress', 'wpsp_lbs_city', 'wpsp_lbs_state', 'wpsp_lbs_addresscountry', 'wpsp_lbs_postal', 'wpsp_lbs_image', 'wpsp_lbs_phone', 'wpsp_lbs_url', 'wpsp_lbs_map', 'wpsp_lcseo_pricerange1', 'wpsp_lcseo_pricerange', 'wpsp_lbs_active', 'wpsp_lcseo_geo', 'wpsp_lcseo_lat', 'wpsp_lcseo_lon', 'pro_version_notification_jsonld_dismissed_until');

