#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wowpi_guild_credentials'
wp option delete 'wowpi_guild_guild'
wp option delete 'wowpi_guild_realms'
wp option delete 'wowpi_guild_guild_roster'
wp option delete 'wowpi_guild_classes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wowpi_guild_class_%'"
wp option delete 'wowpi_guild_races'
wp option delete 'wowpi_guild_specializations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_specs'"
wp option delete 'acf_version'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'acf_plugin_updates'

# Clear Cron Jobs
wp cron event delete 'wowpi_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_on_screen'"
