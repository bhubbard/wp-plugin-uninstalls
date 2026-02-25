-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tim_default_content_lang');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_qts_slug_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_qts_slug_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_qts_slug_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_qts_slug_%';

