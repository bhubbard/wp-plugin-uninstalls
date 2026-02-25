-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('duplicate_page_options', 'mk_fm_close_fm_help_c');

