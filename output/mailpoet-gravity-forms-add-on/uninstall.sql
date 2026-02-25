-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailpoet_gravity_forms_addon_version', 'gf_mailpoet_settings');

