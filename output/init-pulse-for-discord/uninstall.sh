#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'init_plugin_suite_pulse_for_discord_enable'
wp option delete 'init_plugin_suite_pulse_for_discord_webhook_url'
wp option delete 'init_plugin_suite_pulse_for_discord_username'
wp option delete 'init_plugin_suite_pulse_for_discord_avatar'
wp option delete 'init_plugin_suite_pulse_for_discord_notify_new_post'
wp option delete 'init_plugin_suite_pulse_for_discord_notify_post_update'
wp option delete 'init_plugin_suite_pulse_for_discord_include_featured'
wp option delete 'init_plugin_suite_pulse_for_discord_image_size'
wp option delete 'init_plugin_suite_pulse_for_discord_message_template_post'
wp option delete 'init_plugin_suite_pulse_for_discord_timeout'
wp option delete 'init_plugin_suite_pulse_for_discord_retry'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'init_plugin_suite_pulse_for_discord_role_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'init_plugin_suite_pulse_for_discord_role_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'init_plugin_suite_pulse_for_discord_role_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'init_plugin_suite_pulse_for_discord_role_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'init_plugin_suite_pulse_for_discord_all_role_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'init_plugin_suite_pulse_for_discord_all_role_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'init_plugin_suite_pulse_for_discord_all_role_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'init_plugin_suite_pulse_for_discord_all_role_id'"
