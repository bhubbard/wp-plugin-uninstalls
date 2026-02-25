-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cp_date', 'cp_date_end', 'cp_tid', 'cp_date_start');
DELETE FROM wp_usermeta WHERE meta_key IN ('cp_date', 'cp_date_end', 'cp_tid', 'cp_date_start');
DELETE FROM wp_termmeta WHERE meta_key IN ('cp_date', 'cp_date_end', 'cp_tid', 'cp_date_start');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cp_date', 'cp_date_end', 'cp_tid', 'cp_date_start');

