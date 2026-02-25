-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfat_export_form_filename', 'gfat_export_exclude_bom', 'gfat_spam_filtering', 'gfat_last_entry_id', 'gfat_recent_entry_count', 'gfadvtools_per_page', 'gfat_spam_list_table_created', 'gfat_spam_api_key');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('form_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('form_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('form_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('form_id');

