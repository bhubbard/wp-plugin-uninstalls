-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bshare_code', 'bshare_pos', 'bshare_inPage', 'bshare_inFeed', 'bshare_infeed', 'bshare_inpage');

