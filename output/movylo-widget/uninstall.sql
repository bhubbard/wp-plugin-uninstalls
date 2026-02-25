-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('movylo_disabled', 'movylo_embed_code', 'movylo_api_id', 'movylo_api_secret', 'movylo_store_id', 'movylo_access_token', 'movylo_refresh_token');

