#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_mkb_flushed_rewrite_cpt'
wp option delete '_mkb_flushed_rewrite_topic'
wp option delete '_mkb_flushed_rewrite_tag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mkb_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mkb_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mkb_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mkb_views'"
