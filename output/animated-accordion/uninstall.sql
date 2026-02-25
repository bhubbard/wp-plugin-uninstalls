-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('animated_Accordion_db_version', 'custom_table_example_db_version');

