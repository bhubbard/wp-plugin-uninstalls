-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pvtmed_deactivate_migrate_video', 'pvtmed_deactivate_migrate_audio', 'pvtmed_flush', 'pvtmed_activated_mu_success', 'pvtmed_activated_mu_failure');
DELETE FROM wp_options WHERE option_name LIKE 'pvtmed_deactivate_migrate_%';
DELETE FROM wp_options WHERE option_name LIKE 'pvtmed_needs_fix_%';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pvtmed_settings', '_wp_attachment_backup_sizes', 'pvtmed_private');
DELETE FROM wp_usermeta WHERE meta_key IN ('pvtmed_settings', '_wp_attachment_backup_sizes', 'pvtmed_private');
DELETE FROM wp_termmeta WHERE meta_key IN ('pvtmed_settings', '_wp_attachment_backup_sizes', 'pvtmed_private');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pvtmed_settings', '_wp_attachment_backup_sizes', 'pvtmed_private');

