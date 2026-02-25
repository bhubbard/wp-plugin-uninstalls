-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BLIMWI_settings', 'blimwi_import_completed', 'blimwi_rating_data');

