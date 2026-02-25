-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rock_the_slackbot_outgoing_webhooks', 'rock_the_slackbot_network_outgoing_webhooks', 'active_sitewide_plugins', 'rock_the_slackbot_add_outgoing_webhook', 'settings_errors', 'rock_the_slackbot_pre_upgrade_information', 'rock_the_slack_core_update_available', 'rock_the_slack_plugin_update_available', 'update_plugins', 'rock_the_slack_theme_update_available', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_menu_item_type', '_menu_item_url', '_menu_item_object_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_menu_item_type', '_menu_item_url', '_menu_item_object_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_menu_item_type', '_menu_item_url', '_menu_item_object_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_menu_item_type', '_menu_item_url', '_menu_item_object_id');

