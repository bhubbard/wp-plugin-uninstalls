#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'synved_social_settings'
wp option delete 'smf-hide-review'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'synved_connect_id_%'"
wp option delete 'synved_connect_install_date'
wp option delete 'synved_version'
wp option delete 'synved_option_wp_upgrade_addon_transfer'
wp option delete 'synved_option_wp_upgrade_addon_transfer_time'
wp option delete 'synved_connect_id_default'
wp option delete 'widget_synved_social_share'
wp option delete 'widget_synved_social_follow'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'synved_social_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'synved_social_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'synved_social_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'synved_social_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'synved_social_exclude_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'synved_social_exclude_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'synved_social_exclude_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'synved_social_exclude_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'synved_social_exclude_follow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'synved_social_exclude_follow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'synved_social_exclude_follow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'synved_social_exclude_follow'"
