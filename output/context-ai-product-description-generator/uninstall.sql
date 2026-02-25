-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocontext_ai_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_woocontext_ai_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_woocontext_ai_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_woocontext_ai_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_woocontext_ai_status');

