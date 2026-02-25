#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seo_pyramid_schema_settings_option_name'
wp option delete 'seo_pyramid_option_name'
wp option delete 'media_selector_attachment_id'
wp option delete 'seo_pyramid_og_and_tc_option_name'
wp option delete 'seo_pyramid_sitemap_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_redirect_switch'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_redirect_switch'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_redirect_switch'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_redirect_switch'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_redirect_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_redirect_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_redirect_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_redirect_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_change_frequency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_change_frequency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_change_frequency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_change_frequency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_page_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_page_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_page_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_page_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'seo_pyramid_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'seo_pyramid_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'seo_pyramid_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'seo_pyramid_status'"
