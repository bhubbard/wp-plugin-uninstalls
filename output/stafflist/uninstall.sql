-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stafflist_rename_noresults', 'stafflist_rename_page', 'stafflist_rename_results', 'stafflist_rename_searchdir');

