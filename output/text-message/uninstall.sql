-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('biztext_custom_role', 'wpbiztext-button', 'biztext_custom_role_contact');

