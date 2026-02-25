-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_site_transient_update_plugins', 'PMP_lic_email', '_site_transient_update_themes', 'wppb_demo_input_examples', 'pet-match-pro-color-options', 'pet-match-pro-general-options', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%-license';

