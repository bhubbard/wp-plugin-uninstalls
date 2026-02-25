-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gbfdb_enabled', 'gbfdb_first_activate_plugins', 'gbfdp_supported_plugins', 'gbfdb_supported_plugins', 'gbfdb_data');
DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_elementor_%';
DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_wpcf7_%';
DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_pojo_%';
DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_ninja_%';
DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_gravity_%';
DELETE FROM wp_options WHERE option_name LIKE 'gbfdb_record_forms_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_id';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_name';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_meta';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_type';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sent';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sent';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sent';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sent';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_API_status';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_API_status';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_API_status';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_API_status';

