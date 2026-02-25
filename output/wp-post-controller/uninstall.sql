-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wppc_reset_notice_box', 'wppc_database_setup_done', 'wppc_setting');

