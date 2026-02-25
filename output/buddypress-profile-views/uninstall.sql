-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('df_displaytext', 'df_countviews', 'bp_profilevisits_db_version');

