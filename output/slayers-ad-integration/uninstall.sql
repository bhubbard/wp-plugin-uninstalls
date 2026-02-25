-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slayer_ad_ads', 'slayer_ad_css', 'slayer_ad_html_before', 'slayer_ad_html_after', 'slayer_ad_max_count_per_page');

