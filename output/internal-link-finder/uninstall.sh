#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wilo_dash_integration_enabled'
wp option delete 'wilo_secret_key'
wp option delete 'wilo_acf_integration'
wp option delete 'wilo_exclusions'
wp option delete 'wilo_already_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wilo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wilo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wilo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wilo_keywords'"
