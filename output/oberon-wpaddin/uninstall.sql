-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('exalogic_oberonplugins_settings', 'exalogic_oberonplugins_version');

