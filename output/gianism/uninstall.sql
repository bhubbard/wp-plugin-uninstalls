-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gianism_notice_log', 'wpg_analytics_profile', 'wpg_analytics_token', 'gianism_facebook_admin_token', 'gianism_facebook_admin_refreshed', 'gianism_facebook_admin_id', 'wp_gianism_option');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpg_unknown_password', 'nickname', 'first_name', 'last_name');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpg_unknown_password', 'nickname', 'first_name', 'last_name');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpg_unknown_password', 'nickname', 'first_name', 'last_name');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpg_unknown_password', 'nickname', 'first_name', 'last_name');

