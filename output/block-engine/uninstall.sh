#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'block_engine_plugin_version'
wp option delete 'block_engine_plugin_db_version'
wp option delete 'block_engine_install_date'
wp option delete 'block_engine_css_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'block_engine_ctt_via'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'block_engine_ctt_via'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'block_engine_ctt_via'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'block_engine_ctt_via'"
