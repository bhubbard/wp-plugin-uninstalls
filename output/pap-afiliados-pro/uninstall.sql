-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('papafpro_db_version', 'papafpro_settings', 'papafpro_capabilities_added', 'papafpro_activated', 'papafpro_onboarding_cleanup_done', 'papafpro_appearance_configured', 'papafpro_category_children', 'papafpro_clear_stats_limit');
DELETE FROM wp_options WHERE option_name LIKE 'papafpro_csv_file_%';
DELETE FROM wp_options WHERE option_name LIKE 'papafpro_click_interval_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('papafpro_image_url', 'papafpro_affiliate_link', 'papafpro_marketplace', 'papafpro_welcome_banner_dismissed', 'papafpro_affiliate_price', 'papafpro_created_by_csv', 'papafpro_custom_badge', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('papafpro_image_url', 'papafpro_affiliate_link', 'papafpro_marketplace', 'papafpro_welcome_banner_dismissed', 'papafpro_affiliate_price', 'papafpro_created_by_csv', 'papafpro_custom_badge', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('papafpro_image_url', 'papafpro_affiliate_link', 'papafpro_marketplace', 'papafpro_welcome_banner_dismissed', 'papafpro_affiliate_price', 'papafpro_created_by_csv', 'papafpro_custom_badge', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('papafpro_image_url', 'papafpro_affiliate_link', 'papafpro_marketplace', 'papafpro_welcome_banner_dismissed', 'papafpro_affiliate_price', 'papafpro_created_by_csv', 'papafpro_custom_badge', '_thumbnail_id');

