-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sogo_accessibility_settings', '_sogo_acc_lk_status');

