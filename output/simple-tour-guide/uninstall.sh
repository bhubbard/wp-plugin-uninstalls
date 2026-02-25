#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stg_tour'
wp option delete 'stg_settings'
wp option delete 'stg_colors'
wp option delete 'stg_steps'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stg_banner_hide_new_admin_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stg_banner_hide_new_admin_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stg_banner_hide_new_admin_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stg_banner_hide_new_admin_notice'"
