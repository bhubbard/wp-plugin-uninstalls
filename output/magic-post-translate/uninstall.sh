#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magic_post_translate_plugin_langs_settings'
wp option delete 'magic_post_translate_plugin_main_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpt_value_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpt_value_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpt_value_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpt_value_key'"
