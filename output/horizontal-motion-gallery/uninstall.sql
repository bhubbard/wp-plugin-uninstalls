-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_hmg_dir1', 'my_hmg_dir2', 'my_hmg_dir3', 'my_hmg_dir4', 'my_hmg_dir5');

