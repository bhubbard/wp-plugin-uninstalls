-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfo_lock_settings', 'gfo_lock_network_settings', 'active_sitewide_plugins', 'guten_free_options', 'network_default_editor', 'sidebars_widgets', 'wordquest_plugin_info', 'update_plugins', 'wordquest_guides_feed', 'wordquest_quest_feed', 'pluginreview_newest_feed', 'prn_feed', 'pluginreview_updated_feed');
DELETE FROM wp_options WHERE option_name LIKE '%_sidebar_options';
DELETE FROM wp_options WHERE option_name LIKE '%_first_install';
DELETE FROM wp_options WHERE option_name LIKE '%_ads_box_off';
DELETE FROM wp_options WHERE option_name LIKE '%_donation_box_off';
DELETE FROM wp_options WHERE option_name LIKE '%_report_box_off';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_default_editor', '_editor_override');
DELETE FROM wp_usermeta WHERE meta_key IN ('_default_editor', '_editor_override');
DELETE FROM wp_termmeta WHERE meta_key IN ('_default_editor', '_editor_override');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_default_editor', '_editor_override');

