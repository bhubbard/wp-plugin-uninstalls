#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rock_the_slackbot_outgoing_webhooks'
wp option delete 'rock_the_slackbot_network_outgoing_webhooks'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'rock_the_slackbot_add_outgoing_webhook'
wp transient delete 'settings_errors'
wp transient delete 'rock_the_slackbot_pre_upgrade_information'
wp transient delete 'rock_the_slack_core_update_available'
wp transient delete 'rock_the_slack_plugin_update_available'
wp transient delete 'update_plugins'
wp transient delete 'rock_the_slack_theme_update_available'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
