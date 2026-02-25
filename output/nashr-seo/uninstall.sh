#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%description'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_archive'"
wp option delete 'mnbaa_seo_screens'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%title'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta'"
wp option delete 'mnbaa_seo_private_update'
wp option delete 'license_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mnbaa_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mnbaa_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mnbaa_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mnbaa_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mnbaa_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mnbaa_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mnbaa_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mnbaa_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%title'"
