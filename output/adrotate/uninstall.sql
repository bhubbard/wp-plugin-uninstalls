-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adrotate_advert_status', 'adrotate_hide_getpro', 'adrotate_db_version', 'adrotate_version', 'adrotate_notifications', 'BorlabsCacheConfigInactive', 'adrotate_dynamic_required', 'adrotate_group_css', 'adrotate_config', 'adrotate_crawlers', 'adrotate_geo_required', 'adrotate_geo_requests', 'adrotate_header_output', 'adrotate_hide_license', 'adrotate_hide_review', 'adrotate_hide_birthday', 'adrotate_responsive_required', 'adrotate_hide_premium', 'adrotate_hide_premium_2', 'adrotate_hide_premium_3', 'adrotate_hide_translation', 'adrotate_hide_banner', 'adrotate_hide_competition');

