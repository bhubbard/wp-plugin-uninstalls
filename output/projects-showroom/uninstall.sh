#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'psr_plugin_version'
wp option delete 'psr_setting_main_color'
wp option delete 'psr_setting_main_color_hover'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_psr_projetc_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_psr_projetc_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_psr_projetc_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_psr_projetc_url'"
