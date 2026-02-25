-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fundcollector_last_translation_update', 'fundcollector_form_dynamic_css', 'fundcollector_debug_dates', 'fundcollector_ajax_debug_logged', 'fundcollector_settings_errors', 'fundcollector_settings_updated', 'fundcollector_critical_db_errors', 'fundcollector_forms_errors');
DELETE FROM wp_options WHERE option_name LIKE 'fundcollector_token_%';
DELETE FROM wp_options WHERE option_name LIKE 'fundcollector_payment_failed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'fundcollector_dismissed_db_error_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'fundcollector_dismissed_db_error_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'fundcollector_dismissed_db_error_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'fundcollector_dismissed_db_error_%';

