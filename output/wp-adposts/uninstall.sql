-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_adposts_sizes', 'wp_adposts_posts_ad_enabled', 'wp_adposts_posts_ad_location', 'wp_adposts_posts_ad_position');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ad_location', 'ad_view_count', 'ad_click_count', 'ad_link', 'ads_sizes');
DELETE FROM wp_usermeta WHERE meta_key IN ('ad_location', 'ad_view_count', 'ad_click_count', 'ad_link', 'ads_sizes');
DELETE FROM wp_termmeta WHERE meta_key IN ('ad_location', 'ad_view_count', 'ad_click_count', 'ad_link', 'ads_sizes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ad_location', 'ad_view_count', 'ad_click_count', 'ad_link', 'ads_sizes');

