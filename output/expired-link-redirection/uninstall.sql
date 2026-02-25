-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elrlitev_options', 'elrlitev_admin_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elrlitev_original_url', '_elrlitev_redirect_url', '_elrlitev_expire_time', '_elrlitev_hits', '_elrlitev_is_template', '_elrlitev_autolink_keywords', '_elrlitev_expire_value', '_elrlitev_expire_unit');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elrlitev_original_url', '_elrlitev_redirect_url', '_elrlitev_expire_time', '_elrlitev_hits', '_elrlitev_is_template', '_elrlitev_autolink_keywords', '_elrlitev_expire_value', '_elrlitev_expire_unit');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elrlitev_original_url', '_elrlitev_redirect_url', '_elrlitev_expire_time', '_elrlitev_hits', '_elrlitev_is_template', '_elrlitev_autolink_keywords', '_elrlitev_expire_value', '_elrlitev_expire_unit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elrlitev_original_url', '_elrlitev_redirect_url', '_elrlitev_expire_time', '_elrlitev_hits', '_elrlitev_is_template', '_elrlitev_autolink_keywords', '_elrlitev_expire_value', '_elrlitev_expire_unit');

