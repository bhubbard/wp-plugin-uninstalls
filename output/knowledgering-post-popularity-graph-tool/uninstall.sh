#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'knowledgeringppgt_popular_posts_widget_content'
wp option delete 'knowledgeringppgt_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'krppretweets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'krppretweets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'krppretweets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'krppretweets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'krppfacebooklikes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'krppfacebooklikes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'krppfacebooklikes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'krppfacebooklikes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'views'"
