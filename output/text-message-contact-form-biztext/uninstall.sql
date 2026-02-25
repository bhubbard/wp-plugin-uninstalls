-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpbiztext-cform', 'biztext_custom_role_contact', 'biztext_custom_role');

