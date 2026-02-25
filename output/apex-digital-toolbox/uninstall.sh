#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'regenerate_all_elementor_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'display_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_parent_child_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_parent_child_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_parent_child_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_parent_child_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alternative_taxonomy_page_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alternative_taxonomy_page_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alternative_taxonomy_page_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alternative_taxonomy_page_title'"
