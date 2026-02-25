-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opttab_api_key', 'opttab_auto_sync_enabled', 'opttab_sync_frequency', 'opttab_sync_content_types', 'opttab_conflict_resolution', 'opttab_debug_logging', 'opttab_onboarding_completed', 'opttab_version', 'opttab_access_token', 'opttab_user_info', 'opttab_refresh_token', 'opttab_token_expires_at', 'opttab_webhook_id', 'opttab_webhook_secret', 'opttab_plan_limits_backup', 'opttab_oauth_state');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_opttab_geo_data', '_opttab_geo_breakdown', '_opttab_geo_score', '_opttab_geo_analyzed', '_yoast_wpseo_metadesc', '_genesis_description', '_opttab_geo_title', '_opttab_geo_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_opttab_geo_data', '_opttab_geo_breakdown', '_opttab_geo_score', '_opttab_geo_analyzed', '_yoast_wpseo_metadesc', '_genesis_description', '_opttab_geo_title', '_opttab_geo_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_opttab_geo_data', '_opttab_geo_breakdown', '_opttab_geo_score', '_opttab_geo_analyzed', '_yoast_wpseo_metadesc', '_genesis_description', '_opttab_geo_title', '_opttab_geo_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_opttab_geo_data', '_opttab_geo_breakdown', '_opttab_geo_score', '_opttab_geo_analyzed', '_yoast_wpseo_metadesc', '_genesis_description', '_opttab_geo_title', '_opttab_geo_description');

