-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tagsyncer_tab1_option_name', 'tagsyncer_tab2_option_name', 'tagsyncer_tab3_option_name', 'google_tag_manager_settings');

