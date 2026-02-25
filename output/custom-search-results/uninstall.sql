-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wesp_general_setting_active', 'wesp_db_version', 'wesp_searchtype_post', 'wesp_searchtype_page');

