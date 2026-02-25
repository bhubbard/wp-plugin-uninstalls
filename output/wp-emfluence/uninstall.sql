-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('emfluence_global', 'emfl_widget_recaptcha', 'emfl-access-token-validation');

