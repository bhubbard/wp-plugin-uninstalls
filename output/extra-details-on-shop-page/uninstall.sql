-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('EDSP_separator_format', 'EDSP_attributes', 'EDSP_classes', 'EDSP_options');

