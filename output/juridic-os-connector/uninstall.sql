-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('juridicos_status_default', 'juridicos_form', 'juridicos_settings');
DELETE FROM wp_options WHERE option_name LIKE 'juridicos_form_mapping_%';
DELETE FROM wp_options WHERE option_name LIKE 'juridicos_last_submission_%';

