-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wada_debug_test_option', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_usermeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_termmeta WHERE meta_key IN ('session_tokens');
DELETE FROM wp_commentmeta WHERE meta_key IN ('session_tokens');

