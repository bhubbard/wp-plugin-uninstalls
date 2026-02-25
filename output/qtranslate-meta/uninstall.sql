-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qtrans_meta_title_hook', 'qtrans_meta_title_suffix');

