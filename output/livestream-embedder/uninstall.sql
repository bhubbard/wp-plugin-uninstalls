-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('livestream_embedder_api_key', 'livestream_embedder_default_channel');

