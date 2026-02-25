-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mmwpf_get_admin_style_settings', 'mmwpf_dependency', 'mmwpf_active_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mmwpf_install_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('mmwpf_install_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('mmwpf_install_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mmwpf_install_time');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mmwpf_entries_columns_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mmwpf_entries_columns_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mmwpf_entries_columns_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mmwpf_entries_columns_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'entries_table_per_page_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'entries_table_per_page_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'entries_table_per_page_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'entries_table_per_page_%';

