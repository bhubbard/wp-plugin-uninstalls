-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ajaxcf_recipient', 'ajaxcf_subject', 'ajaxcf_confirm', 'ajaxcf_custom_css');

-- Drop Custom Tables
DROP TABLE IF EXISTS wp_wp_design_form;

