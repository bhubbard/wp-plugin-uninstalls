-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('survais_active_survai', 'survais_embed_code', 'survais_options');

