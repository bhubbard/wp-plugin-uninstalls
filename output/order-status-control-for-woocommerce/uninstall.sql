-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp_order_status_control_installed', 'wc_order_status_control');
DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%';
DELETE FROM wp_options WHERE option_name LIKE 'rn_last_notification_%';
DELETE FROM wp_options WHERE option_name LIKE 'wpi_check_ran_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rn_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rn_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rn_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rn_dismissed');

