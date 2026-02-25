-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mk_adblock_title', 'mk_adblock_description', 'mk_adblock_elements', 'mk_adblock_hide_video', 'mk_adblock_required');

