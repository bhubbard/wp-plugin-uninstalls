-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('securelywp_hardening_options', 'securelywp_headers_options', 'securelywp_2fa_options', 'securelywp_firewall_options', 'securelywp_blocked_requests', 'securelywp_options', 'securelywp_cache_purged');
DELETE FROM wp_options WHERE option_name LIKE 'securelywp_email_2fa_code_%';
DELETE FROM wp_options WHERE option_name LIKE 'securelywp_2fa_user_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('securelywp_2fa_user_options');
DELETE FROM wp_usermeta WHERE meta_key IN ('securelywp_2fa_user_options');
DELETE FROM wp_termmeta WHERE meta_key IN ('securelywp_2fa_user_options');
DELETE FROM wp_commentmeta WHERE meta_key IN ('securelywp_2fa_user_options');

