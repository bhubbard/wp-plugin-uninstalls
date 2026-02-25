#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'taboola_recent_notifications'
wp option delete 'taboola_push_server_client_id'
wp option delete 'taboola_push_server_client_key'
wp option delete 'taboola_push_default_thumbnail'
wp option delete 'taboola_push_manual_title'
wp option delete 'taboola_push_manual_message'
wp option delete 'taboola_push_manual_url'
wp option delete 'taboola_push_manual_icon'
wp option delete 'taboola_push_manual_url_selector'
wp option delete 'taboola_epsilon_base_url_override'
wp option delete 'taboola_selected_theme'

# Delete Transients
wp transient delete 'taboola_test_notification'
wp transient delete 'taboola_push_server_apps'
wp transient delete 'taboola_push_server_health_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taboola_push_app_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taboola_push_app_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taboola_push_app_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taboola_push_app_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taboola_push_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taboola_push_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taboola_push_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taboola_push_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taboola_push_customize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taboola_push_customize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taboola_push_customize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taboola_push_customize'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taboola_push_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taboola_push_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taboola_push_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taboola_push_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taboola_push_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taboola_push_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taboola_push_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taboola_push_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taboola_push_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taboola_push_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taboola_push_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taboola_push_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taboola_push_auto_send'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taboola_push_auto_send'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taboola_push_auto_send'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taboola_push_auto_send'"
