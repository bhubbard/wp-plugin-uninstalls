-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoblue_connections', 'autoblue_enabled', 'autoblue_log_level', 'autoblue_db_version');
DELETE FROM wp_options WHERE option_name LIKE 'autoblue_at_uri_%';
DELETE FROM wp_options WHERE option_name LIKE 'autoblue_comments_%';
DELETE FROM wp_options WHERE option_name LIKE 'autoblue_pds_endpoint_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('autoblue_custom_message', 'autoblue_shares', 'autoblue_post_url', 'autoblue_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('autoblue_custom_message', 'autoblue_shares', 'autoblue_post_url', 'autoblue_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('autoblue_custom_message', 'autoblue_shares', 'autoblue_post_url', 'autoblue_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('autoblue_custom_message', 'autoblue_shares', 'autoblue_post_url', 'autoblue_enabled');

