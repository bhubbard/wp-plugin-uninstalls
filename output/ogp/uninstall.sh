#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ogp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ogp__open_graph_pro'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ogp__open_graph_pro'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ogp__open_graph_pro'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ogp__open_graph_pro'"
