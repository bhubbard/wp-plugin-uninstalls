#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seotm_do_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'seotm_options'
wp option delete '_plugin_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ogTitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ogTitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ogTitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ogTitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitterTitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitterTitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitterTitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitterTitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seoTitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seoTitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seoTitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seoTitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jsonScript'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jsonScript'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jsonScript'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jsonScript'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclude_from_sitemap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclude_from_sitemap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclude_from_sitemap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclude_from_sitemap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exclude_taxonomy_from_sitemap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exclude_taxonomy_from_sitemap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exclude_taxonomy_from_sitemap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exclude_taxonomy_from_sitemap'"
