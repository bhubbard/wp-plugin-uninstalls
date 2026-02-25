-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wtlswPhone', 'wtl_swcolor', 'wtlswZalo');

