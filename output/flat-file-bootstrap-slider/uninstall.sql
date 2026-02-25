-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('select_file', 'add_text', 'select_order', 'number_slides');

