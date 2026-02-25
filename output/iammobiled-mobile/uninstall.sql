-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('iammobiled_ad_option', 'iammobiled_ad_share', 'iammobiled_user_admob_id', 'iammobiled_admob_id', 'iammobiled_mobile_template', 'cfmobi_mobile_browsers', 'cfmobi_touch_browsers', 'iammobiled_mobile_theme', 'current_theme');

