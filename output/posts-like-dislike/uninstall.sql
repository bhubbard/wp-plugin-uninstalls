-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pld_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pld_like_count', 'pld_dislike_count', 'pld_ips', 'pld_users', 'pld_ips_info', 'pld_users_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('pld_like_count', 'pld_dislike_count', 'pld_ips', 'pld_users', 'pld_ips_info', 'pld_users_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('pld_like_count', 'pld_dislike_count', 'pld_ips', 'pld_users', 'pld_ips_info', 'pld_users_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pld_like_count', 'pld_dislike_count', 'pld_ips', 'pld_users', 'pld_ips_info', 'pld_users_info');

