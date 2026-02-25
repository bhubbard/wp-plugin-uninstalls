#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reclinks_plugin_options'
wp option delete 'rewrite_rules'
wp option delete 'reclinks_plugin_settings'
wp option delete 'reclinks_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_vote_score'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_vote_score'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_vote_score'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_vote_score'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_href'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_href'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_href'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_href'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_author_karma'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_author_karma'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_author_karma'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_author_karma'"
