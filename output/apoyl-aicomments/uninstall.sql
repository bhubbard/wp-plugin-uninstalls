-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('apoyl-aicomments-settings', 'apoyl_aicomments_db_version');

