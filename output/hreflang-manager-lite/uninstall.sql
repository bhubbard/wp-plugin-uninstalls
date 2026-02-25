-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('daexthrmal_options_version', 'daexthrmal_database_version', 'daexthrmal_language', 'daexthrmal_script', 'daexthrmal_locale', 'daexthrmal_auto_alternate_pages', 'daexthrmal_show_log', 'daexthrmal_detect_url_mode', 'daexthrmal_https', 'daexthrmal_sample_future_permalink', 'daim_dismissible_notice_a', 'daexthrmal_auto_trailing_slash');
DELETE FROM wp_options WHERE option_name LIKE 'daexthrmal_default_language_%';
DELETE FROM wp_options WHERE option_name LIKE 'daexthrmal_default_script_%';
DELETE FROM wp_options WHERE option_name LIKE 'daexthrmal_default_locale_%';
DELETE FROM wp_options WHERE option_name LIKE '%_auto_delete';

