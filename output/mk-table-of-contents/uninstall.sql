-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mk_toc_top_offset', 'mk_toc_smooth', 'mk_toc_default_heading');

