-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('key_snap_menu', 'key_snap_menumisc', 'key_snap_recent', 'key_snap_csscls1', 'key_snap_csscls2', 'key_snap_exclude', 'key_snap_fancyurl', 'key_snap_fancyurlname', 'key_snap_tab1', 'key_snap_alphabet');

