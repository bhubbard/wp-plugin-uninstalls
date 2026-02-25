#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoptimize_html'

# Delete Transients
wp transient delete 'cache_size'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clear_post_cache_on_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clear_post_cache_on_update'"
