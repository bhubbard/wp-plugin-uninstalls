-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('contact360-client-id', 'contact360-api-secret', 'contact360-endpoint-url');

