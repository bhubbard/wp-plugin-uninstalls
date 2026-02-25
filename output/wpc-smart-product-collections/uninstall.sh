#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcpc_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcpc_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpc_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpc_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpc_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpc_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpc_include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpc_include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpc_include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpc_include'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpc_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpc_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpc_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpc_exclude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpc_cronjob'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpc_cronjob'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpc_cronjob'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpc_cronjob'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpc_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpc_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpc_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpc_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpc_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpc_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpc_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpc_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcpc_banner_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcpc_banner_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcpc_banner_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcpc_banner_link'"
