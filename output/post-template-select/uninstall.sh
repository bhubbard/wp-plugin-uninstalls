#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ulm_single_template_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ulm_custom_get_post_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ulm_custom_get_post_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ulm_custom_get_post_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ulm_custom_get_post_template'"
