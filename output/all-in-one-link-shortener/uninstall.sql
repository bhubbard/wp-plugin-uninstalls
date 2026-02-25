-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiols_default_provider', 'aiols_auto_generate_on_save', 'aiols_tinyurl_api_key', 'aiols_bitly_token', 'aiols_rebrandly_key', 'aiols_cuttly_key', 'aiols_tly_key', 'aiols_bitly_domain', 'aiols_bulk_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_aiols_shortlink', '_aiols_last_error', '_aiols_provider');
DELETE FROM wp_usermeta WHERE meta_key IN ('_aiols_shortlink', '_aiols_last_error', '_aiols_provider');
DELETE FROM wp_termmeta WHERE meta_key IN ('_aiols_shortlink', '_aiols_last_error', '_aiols_provider');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_aiols_shortlink', '_aiols_last_error', '_aiols_provider');

