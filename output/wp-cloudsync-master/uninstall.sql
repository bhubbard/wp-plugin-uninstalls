-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcloud-storage-provider', 'mcloud-storage-google-credentials', 'mcloud-storage-google-bucket', 'mcloud-storage-s3-access-key', 'mcloud-storage-s3-secret', 'mcloud-storage-s3-bucket', 'mcloud-storage-s3-region', 'mcloud-storage-s3-endpoint', 'mcloud-storage-prefix', 'wpmcs_global_settings', 'tantan_wordpress_s3', 'sm_root_dir', 'sm_bucket', 'sm_key_json');
DELETE FROM wp_options WHERE option_name LIKE '%_wizard_completed';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismissed';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismissed';

