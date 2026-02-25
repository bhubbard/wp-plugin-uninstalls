-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('as_woo_owl_all_opt_save', 'as_woo_owl_all_settings_save');

