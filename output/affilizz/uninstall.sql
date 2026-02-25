-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('affilizz_api_key', 'affilizz_organization', 'affilizz_media', 'get_api_country_codes', 'affilizz_channel', 'affilizz_javascript_debug_mode', 'affilizz_proxy_uuid', 'affilizz_api_country_code', 'affilizz_javascript_analytics', 'affilizz_plugin_version', 'affilizz_organization_label', 'affilizz_media_label', 'affilizz_channel_label', 'affilizz_rendering_mode', 'affilizz_disable_javascript', 'affilizz_selective_enqueue', 'affilizz_should_display_install_wizard', 'affilizz_missing_channel', 'affilizz_missing_media');
DELETE FROM wp_options WHERE option_name LIKE 'affilizz_publication_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('affilizz_publication_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('affilizz_publication_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('affilizz_publication_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('affilizz_publication_id');

