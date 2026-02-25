-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('item_admin_email', 'item_surface_label', 'item_measurement_label', 'item_calculate_button_label', 'item_result_label', 'item_contact_section_title', 'item_contact_button_label', 'item_currency', 'item_show_quote');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('item_value');
DELETE FROM wp_usermeta WHERE meta_key IN ('item_value');
DELETE FROM wp_termmeta WHERE meta_key IN ('item_value');
DELETE FROM wp_commentmeta WHERE meta_key IN ('item_value');

