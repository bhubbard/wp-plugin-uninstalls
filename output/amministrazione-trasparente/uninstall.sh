#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgov_at'
wp option delete 'atGroupConf'
wp option delete 'at_version_number'
wp option delete 'at_option_widget'
wp option delete 'at_logic_widget'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aturl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aturl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aturl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aturl'"
