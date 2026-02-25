#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sxmlsg_kategorien'
wp option delete 'sxmlsg_cpt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitemap'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitemap'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitemap'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitemap'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sitemapscore'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sitemapscore'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sitemapscore'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sitemapscore'"
