-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yangform_sites', 'yangform_options', 'yangform_template_style', 'yangform_template');

