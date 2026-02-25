-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jojo_description_enable', 'jojo_description_fixed_enable', 'jojo_description_fixed_height');

