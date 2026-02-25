-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wordquest_plugin_info', 'update_plugins', 'wordquest_guides_feed', 'wordquest_quest_feed', 'pluginreview_newest_feed', 'prn_feed', 'pluginreview_updated_feed');
DELETE FROM wp_options WHERE option_name LIKE '%_first_install';
DELETE FROM wp_options WHERE option_name LIKE '%_sidebar_options';
DELETE FROM wp_options WHERE option_name LIKE '%_ads_box_off';
DELETE FROM wp_options WHERE option_name LIKE '%_donation_box_off';
DELETE FROM wp_options WHERE option_name LIKE '%_report_box_off';

