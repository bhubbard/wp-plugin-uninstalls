-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ICC_Star_H', 'ICC_Star_Add', 'ICC_table_db');

