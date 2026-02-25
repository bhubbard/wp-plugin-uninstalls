-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spt_plugin_dismiss_donate_notice', 'spt_plugin_no_thanks_donate_notice', 'spt_plugin_dismissed_time_donate', 'spt_plugin_installed_time_donate', 'spt_plugin_dismiss_rating_notice', 'spt_plugin_no_thanks_rating_notice', 'spt_plugin_dismissed_time', 'spt_plugin_installed_time', 'spt_plugin_settings', 'spt-admin-notice-on-activation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_spt_ticker_custom_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_spt_ticker_custom_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_spt_ticker_custom_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_spt_ticker_custom_link');

