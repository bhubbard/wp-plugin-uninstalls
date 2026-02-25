-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('p3dlite_version', 'p3dlite_email_templates', 'p3dlite_settings', 'p3dlite_printers_description', 'p3dlite_materials_description', 'p3dlite_coatings_description', 'p3dlite_infills_description', 'p3dlite_do_activation_redirect', 'p3dlite_printers', 'p3dlite_materials', 'p3dlite_coatings', 'p3dlite_price_requests');

