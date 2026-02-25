-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsfe_widget_registration_form', 'wsfe_plugin_just_activated', 'rewrite_rules');

