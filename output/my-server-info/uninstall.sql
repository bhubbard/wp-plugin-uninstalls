-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('myserverinfo_add_mem', 'myserverinfo_add_cpu', 'myserverinfo_add_disk');
DELETE FROM wp_usermeta WHERE meta_key IN ('myserverinfo_add_mem', 'myserverinfo_add_cpu', 'myserverinfo_add_disk');
DELETE FROM wp_termmeta WHERE meta_key IN ('myserverinfo_add_mem', 'myserverinfo_add_cpu', 'myserverinfo_add_disk');
DELETE FROM wp_commentmeta WHERE meta_key IN ('myserverinfo_add_mem', 'myserverinfo_add_cpu', 'myserverinfo_add_disk');

