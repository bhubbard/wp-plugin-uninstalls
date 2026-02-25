-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_wpio_settings', 'wpio_optimize_fail_counter', 'wpio_optimization_disabled_notice_dismissed', 'wpio_db_version', 'wpio_indexation_auto', 'wpio_do_activation_redirect', 'wpio_ao_lastRun', 'wpio_is_OptimizeAll', 'wpio_ao_status', 'wpio_err_logs');
DELETE FROM wp_options WHERE option_name LIKE '%_irreview_installation_time';
DELETE FROM wp_options WHERE option_name LIKE '%_irfeedback_version';
DELETE FROM wp_options WHERE option_name LIKE '%_disallow_feedback';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpio-optimizeall-notice-dismissed', '_wp_attached_file');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpio-optimizeall-notice-dismissed', '_wp_attached_file');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpio-optimizeall-notice-dismissed', '_wp_attached_file');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpio-optimizeall-notice-dismissed', '_wp_attached_file');

