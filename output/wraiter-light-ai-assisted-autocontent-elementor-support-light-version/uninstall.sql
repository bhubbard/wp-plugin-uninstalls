-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wraiter_light_options', 'wraiter_light_ad_banner_popup_dismissed');

