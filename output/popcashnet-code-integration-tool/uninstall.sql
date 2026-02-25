-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popcash_net_uid', 'popcash_net_api_key', 'popcash_net_wid', 'popcash_net_fallback', 'popcash_net_textarea', 'popcash_net_integration', 'popcash_net_disabled', 'popcash_net_fcap');

