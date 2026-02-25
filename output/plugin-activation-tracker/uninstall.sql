-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pat_activated_plugins_gwl', 'pat_display_relative_date_gwl', 'pat_display_after_days_remove_record_gwl');

