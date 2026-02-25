#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trusty_woo_filter_plugin_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twf_Options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twf_Options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twf_Options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twf_Options'"
