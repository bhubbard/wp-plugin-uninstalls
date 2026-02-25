-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('actihitr_activity_logs', 'actihitr_activity_logs_transient');

