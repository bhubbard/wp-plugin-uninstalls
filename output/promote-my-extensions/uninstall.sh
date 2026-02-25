#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gs_pmp_use_documentation'
wp option delete 'gs_pmp_use_details'
wp option delete 'rewrite_rules'
wp option delete 'gs_pmp_display_order'
wp option delete 'gs_pmp_display_asc'
wp option delete 'gs_pmp_plural_label'
wp option delete 'gs_pmp_singular_label'
wp option delete 'gs_pmp_index_slug'
wp option delete 'gs_pmp_use_excerpt'
wp option delete 'gs_pmp_use_thumbnails'
wp option delete 'gs_pmp_use_custom_fields'
wp option delete 'gs_pmp_use_comments'
wp option delete 'gs_pmp_use_trackbacks'
wp option delete 'gs_pmp_use_revisions'
wp option delete 'gs_pmp_use_taxonomies'
wp option delete 'gs_pmp_use_download'
wp option delete 'gs_pmp_use_faq'
wp option delete 'gs_pmp_use_support'
wp option delete 'gs_pmp_use_reviews'
wp option delete 'gs_pmp_use_donate'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plugin_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plugin_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plugin_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plugin_details'"
