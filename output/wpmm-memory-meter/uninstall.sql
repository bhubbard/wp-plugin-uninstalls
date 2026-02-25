-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmm_memory_meter_logs_latest', 'wpmm_memory_meter_logs_flagged');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpmm_memory_meter_admin_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpmm_memory_meter_admin_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpmm_memory_meter_admin_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpmm_memory_meter_admin_notice_dismissed');

