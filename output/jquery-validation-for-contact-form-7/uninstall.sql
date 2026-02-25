-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jvcf7_install_date', 'jvcf7_current_version', 'jvcf7_show_label_error', 'jvcf7_invalid_field_design');

