-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tutor_field_cuf_fields', 'tutor_field_cif_fields');

