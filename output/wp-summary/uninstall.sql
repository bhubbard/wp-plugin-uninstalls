-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('summary_showlink', 'summary_head', 'summary_listtype', 'summary_align');

