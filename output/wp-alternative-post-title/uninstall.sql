-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wapt_premium_status', 'wapt_license_status', 'wapt_last_checked', 'wapt_license_key', 'wapt_license_message', 'wapt_license_expires', 'wapt_alt_title_locations', 'wapt_gemini_api_key', 'wapt_is_licensed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alternative_title', 'disable_alt_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('alternative_title', 'disable_alt_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('alternative_title', 'disable_alt_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alternative_title', 'disable_alt_title');

