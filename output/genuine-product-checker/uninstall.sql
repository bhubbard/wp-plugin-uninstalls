-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('genpro_option_name', 'genpro_serial_text', 'genpro_guar_text', 'genpro_formbtn_text', 'genpro_form_positive', 'genpro_form_negative', 'genpro_container_id');

