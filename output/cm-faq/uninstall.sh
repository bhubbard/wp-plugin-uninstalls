#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmfaq_page_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'
wp option delete 'cmfaq_options'

# Delete Transients
wp transient delete 'cmfaqf_refresh_404_permalinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmfaq_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmfaq_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmfaq_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmfaq_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmfaq_main_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmfaq_main_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmfaq_main_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmfaq_main_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmfaq_show_voting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmfaq_show_voting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmfaq_show_voting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmfaq_show_voting'"
