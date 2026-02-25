-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('start_time', 'total_time', 'logged_in_amount', 'average_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('start_time', 'total_time', 'logged_in_amount', 'average_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('start_time', 'total_time', 'logged_in_amount', 'average_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('start_time', 'total_time', 'logged_in_amount', 'average_time');

