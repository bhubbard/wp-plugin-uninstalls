-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ing_ksiegowosc_api_key', 'ing_ksiegowosc_tax_option_meta', 'ing_ksiegowosc_db_schema');

