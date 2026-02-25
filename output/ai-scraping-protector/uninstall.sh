#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aisp_protector_enable_posts'
wp option delete 'aisp_protector_enable_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aisp_protector_enable_scraping_protection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aisp_protector_enable_scraping_protection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aisp_protector_enable_scraping_protection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aisp_protector_enable_scraping_protection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aisp_protected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aisp_protected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aisp_protected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aisp_protected'"
