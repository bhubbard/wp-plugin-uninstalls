-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('popper');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('popper_rules', '_popper_log_meta', '_popper_actions', '_popper_fields');
DELETE FROM wp_usermeta WHERE meta_key IN ('popper_rules', '_popper_log_meta', '_popper_actions', '_popper_fields');
DELETE FROM wp_termmeta WHERE meta_key IN ('popper_rules', '_popper_log_meta', '_popper_actions', '_popper_fields');
DELETE FROM wp_commentmeta WHERE meta_key IN ('popper_rules', '_popper_log_meta', '_popper_actions', '_popper_fields');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_popper_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_popper_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_popper_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_popper_log_%';

