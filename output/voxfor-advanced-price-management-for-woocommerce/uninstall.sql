-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vapm_markup_percentage', 'vapm_vat_percentage', 'vapm_updated_products', 'vapm_skipped_products', 'vapm_session_updated_products', 'vapm_skip_calculations_mode');

