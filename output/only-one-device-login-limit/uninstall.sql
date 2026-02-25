-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('coder-limit-login-options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('coder_first_time_login', 'coder_is_logout', 'coder_last_active_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('coder_first_time_login', 'coder_is_logout', 'coder_last_active_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('coder_first_time_login', 'coder_is_logout', 'coder_last_active_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('coder_first_time_login', 'coder_is_logout', 'coder_last_active_time');

