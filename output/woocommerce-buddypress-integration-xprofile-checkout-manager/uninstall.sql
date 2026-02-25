-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bf_xprofile_options', 'wc4bp_sync_mail', 'recently_activated', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wc4bp_xprofile_tmpga_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wc4bp_xprofile_tmpga_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wc4bp_xprofile_tmpga_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wc4bp_xprofile_tmpga_dismissed_notice_%';

