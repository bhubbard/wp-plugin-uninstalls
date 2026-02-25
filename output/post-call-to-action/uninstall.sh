#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rum_post_cta_plugin_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rum_post_cta_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rum_post_cta_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rum_post_cta_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rum_post_cta_id'"
