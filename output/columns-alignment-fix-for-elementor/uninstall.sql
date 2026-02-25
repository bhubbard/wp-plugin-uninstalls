-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_fix_columns_alignment_default', 'elementor_stretched_section_container');

