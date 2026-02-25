-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('semrush_contentshake_api_key', 'semrush_contentshake_api_key_accepting');

