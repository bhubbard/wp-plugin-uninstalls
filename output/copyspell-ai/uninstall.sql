-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('copyspell-ai-license', 'copyspell_ai_license_status', 'copyspell_ai_db_version', 'copyspell_ai_options', 'copyspell_ai_signature', 'woocommerce_settings', 'csai_options', 'csai_db_version', 'copyspell_verification_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('copyspell_ai');
DELETE FROM wp_usermeta WHERE meta_key IN ('copyspell_ai');
DELETE FROM wp_termmeta WHERE meta_key IN ('copyspell_ai');
DELETE FROM wp_commentmeta WHERE meta_key IN ('copyspell_ai');

