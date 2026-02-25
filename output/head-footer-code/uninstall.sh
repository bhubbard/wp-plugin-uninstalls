#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auhfc_db_ver'
wp option delete 'auhfc_settings_sitewide'
wp option delete 'auhfc_settings_homepage'
wp option delete 'auhfc_settings_article'
wp option delete 'auhfc_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_auhfc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_auhfc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_auhfc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_auhfc'"
