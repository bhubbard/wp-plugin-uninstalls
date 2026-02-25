#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'harikrutfiwu_migrated_from_fibu'
wp option delete 'harikrutfiwu_migration_notice_dismissed'
wp option delete 'knawatfibu_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_knawatfibu_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_knawatfibu_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_knawatfibu_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_knawatfibu_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_knawatfibu_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_knawatfibu_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_knawatfibu_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_knawatfibu_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_knawatfibu_wcgallary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_knawatfibu_wcgallary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_knawatfibu_wcgallary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_knawatfibu_wcgallary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_product_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_product_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_product_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_product_image'"
