#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'puff_settings'
wp option delete 'widget_ps_puff'
wp option delete 'puff_plugin_version'
wp option delete 'puff_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_puff_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_puff_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_puff_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_puff_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_puff_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_puff_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_puff_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_puff_link'"
