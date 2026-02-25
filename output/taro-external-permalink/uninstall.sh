#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsep_post_types'
wp option delete 'tsep_link_label'
wp option delete 'tsep_render_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_external_permalink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_external_permalink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_external_permalink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_external_permalink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_external_permalink_new'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_external_permalink_new'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_external_permalink_new'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_external_permalink_new'"
