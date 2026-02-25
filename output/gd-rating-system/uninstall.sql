-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'postratings_max', 'gdrts_dbfour_upgrade_steps');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gdrts_rows_ratings_per_page', 'gdrts_rows_votes_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('gdrts_rows_ratings_per_page', 'gdrts_rows_votes_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('gdrts_rows_ratings_per_page', 'gdrts_rows_votes_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gdrts_rows_ratings_per_page', 'gdrts_rows_votes_per_page');

