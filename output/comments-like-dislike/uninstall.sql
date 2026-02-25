-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cld_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cld_like_count', 'cld_dislike_count', 'cld_ips', 'cld_users', 'cld_ips_info', 'cld_users_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('cld_like_count', 'cld_dislike_count', 'cld_ips', 'cld_users', 'cld_ips_info', 'cld_users_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('cld_like_count', 'cld_dislike_count', 'cld_ips', 'cld_users', 'cld_ips_info', 'cld_users_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cld_like_count', 'cld_dislike_count', 'cld_ips', 'cld_users', 'cld_ips_info', 'cld_users_info');

