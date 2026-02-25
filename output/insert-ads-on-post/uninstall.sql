-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('insert_ads_on_post_single', 'insert_ads_on_post_showa', 'insert_ads_on_post_above', 'insert_ads_on_post_showb', 'insert_ads_on_post_below', 'insert_ads_on_post_page', 'insertadsonpost_data');

