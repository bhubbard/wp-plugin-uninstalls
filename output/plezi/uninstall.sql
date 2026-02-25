-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plz_configuration_authentification_options', 'plz_configuration_tracking_options', 'classic-editor-replace', 'plz_configuration_options', 'plezi_wpbakery_forms');

