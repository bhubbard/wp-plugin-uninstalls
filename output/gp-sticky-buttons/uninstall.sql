-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gsb_redirect', 'gp_sticky_buttons_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('widget_status', 'channels_setting', 'gsb_selected_channels', 'theme_setting', 'trigger_setting', 'page_rule_setting', 'day_rule_setting', 'date_rule_setting', 'country_rule_setting');
DELETE FROM wp_usermeta WHERE meta_key IN ('widget_status', 'channels_setting', 'gsb_selected_channels', 'theme_setting', 'trigger_setting', 'page_rule_setting', 'day_rule_setting', 'date_rule_setting', 'country_rule_setting');
DELETE FROM wp_termmeta WHERE meta_key IN ('widget_status', 'channels_setting', 'gsb_selected_channels', 'theme_setting', 'trigger_setting', 'page_rule_setting', 'day_rule_setting', 'date_rule_setting', 'country_rule_setting');
DELETE FROM wp_commentmeta WHERE meta_key IN ('widget_status', 'channels_setting', 'gsb_selected_channels', 'theme_setting', 'trigger_setting', 'page_rule_setting', 'day_rule_setting', 'date_rule_setting', 'country_rule_setting');

