-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sss_settings_data', 'sss_cron_marker', 'sss_log', 'sss_shared_x_pos', 'cron', 'syn_revivify_transient_upgrade');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'SRS_SHARED_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'SRS_SHARED_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'SRS_SHARED_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'SRS_SHARED_%';

