-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%quality_image';
DELETE FROM wp_options WHERE option_name LIKE '%automatic_compression';
DELETE FROM wp_options WHERE option_name LIKE '%original_local_copy';
DELETE FROM wp_options WHERE option_name LIKE '%modal_window_options';
DELETE FROM wp_options WHERE option_name LIKE '%image_backups';
DELETE FROM wp_options WHERE option_name LIKE '%_automatic_compression';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%is_copy_of';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%is_copy_of';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%is_copy_of';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%is_copy_of';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%optimized';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%optimized';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%optimized';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%optimized';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%bytes_saved';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%bytes_saved';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%bytes_saved';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%bytes_saved';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%human_bytes_saved';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%human_bytes_saved';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%human_bytes_saved';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%human_bytes_saved';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%bytes_percentage';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%bytes_percentage';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%bytes_percentage';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%bytes_percentage';

