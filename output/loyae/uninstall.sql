-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loyae_site_id', 'loyae_api_token', 'loyae_site_token');

