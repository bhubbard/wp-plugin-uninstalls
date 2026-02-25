#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartdocs_hero_title'
wp option delete 'smartdocs_hero_description'
wp option delete 'smartdocs_use_built_in_doc_archive'
wp option delete 'smartdocs_custom_doc_page'
wp option delete 'smartdocs_archive_page_slug'
wp option delete 'smartdocs_category_slug'
wp option delete 'smartdocs_enable_single_template'
wp option delete 'smartdocs_enable_taxonomy_template'
wp option delete 'smartdocs_support_page_url'
wp option delete 'smartdocs_search_post_types'
wp option delete 'smartdocs_rewrite_rules_flushed'
wp option delete 'smartdocs_installed_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smartdocs_upvotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smartdocs_upvotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smartdocs_upvotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smartdocs_upvotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smartdocs_downvotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smartdocs_downvotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smartdocs_downvotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smartdocs_downvotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'taxonomy_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'taxonomy_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'taxonomy_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'taxonomy_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
