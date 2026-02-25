-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('LA_ads_Off', 'LA_arr_How', 'LA_arr_Use', 'LA_ads_Pub', 'LA_ads_Api', 'LA_ads_How', 'LA_ads_Use');

