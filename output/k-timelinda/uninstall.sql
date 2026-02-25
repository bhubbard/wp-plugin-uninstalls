-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('k_timelinda-field-text-size', 'k_timelinda-field-line-height', 'k_timelinda-field-title-size', 'k_timelinda-field-subtitle-size', 'k_timelinda-field-timelinda-color', 'k_timelinda-field-border-color', 'k_timelinda-field-title-color', 'k_timelinda-field-subtitle-color', 'k_timelinda-field-text-color');

