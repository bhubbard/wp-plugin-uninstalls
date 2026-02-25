-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('download_counter_options', 'simple-download-counter-dismiss-notice', 'update_sdc_download_permalinks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sdc_download_version', 'sdc_download_count', 'sdc_download_notes', 'sdc_download_url', 'sdc_download_path', 'sdc_download_type', 'sdc_download_size', 'sdc_download_ext', 'sdc_download_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('sdc_download_version', 'sdc_download_count', 'sdc_download_notes', 'sdc_download_url', 'sdc_download_path', 'sdc_download_type', 'sdc_download_size', 'sdc_download_ext', 'sdc_download_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('sdc_download_version', 'sdc_download_count', 'sdc_download_notes', 'sdc_download_url', 'sdc_download_path', 'sdc_download_type', 'sdc_download_size', 'sdc_download_ext', 'sdc_download_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sdc_download_version', 'sdc_download_count', 'sdc_download_notes', 'sdc_download_url', 'sdc_download_path', 'sdc_download_type', 'sdc_download_size', 'sdc_download_ext', 'sdc_download_hash');

