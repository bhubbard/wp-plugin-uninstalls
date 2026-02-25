-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cloudflare_api_key', 'cloudflare_api_email');
DELETE FROM wp_options WHERE option_name LIKE '%-version';

