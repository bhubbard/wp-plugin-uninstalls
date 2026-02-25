-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('floating_ads_bottom_script', 'floating_ads_bottom_status', 'floating_ads_bottom_desktop', 'floating_ads_bottom_mobile');

