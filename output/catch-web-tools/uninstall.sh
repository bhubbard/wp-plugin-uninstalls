#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'catchwebtools_custom_css'
wp option delete 'catchwebtools_catchids'
wp option delete 'catchwebtools_webmaster'
wp option delete 'catchwebtools_opengraph'
wp option delete 'catchwebtools_seo'
wp option delete 'catchwebtools_social'
wp option delete 'catchwebtools_catch_updater'
wp option delete 'catchwebtools_to_top_options'
wp option delete 'catchwebtools_big_image_size_threshold'
wp option delete 'ctp_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'taxonomy_%'"

# Delete Transients
wp transient delete 'catchwebtools_custom_css'
wp transient delete 'catch_updater_in_maintenance_mode'
wp transient delete 'catch_updater_update_message'
wp transient delete 'catchwebtools_social_display'
wp transient delete 'catchwebtools_social_transient'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catchwebtools_opengraph_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catchwebtools_opengraph_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catchwebtools_opengraph_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catchwebtools_opengraph_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catchwebtools_opengraph_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catchwebtools_opengraph_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catchwebtools_opengraph_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catchwebtools_opengraph_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catchwebtools_opengraph_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catchwebtools_opengraph_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catchwebtools_opengraph_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catchwebtools_opengraph_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catchwebtools_opengraph_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catchwebtools_opengraph_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catchwebtools_opengraph_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catchwebtools_opengraph_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catchwebtools_opengraph_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catchwebtools_opengraph_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catchwebtools_opengraph_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catchwebtools_opengraph_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catchwebtools_opengraph_custom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catchwebtools_opengraph_custom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catchwebtools_opengraph_custom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catchwebtools_opengraph_custom'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catchwebtools_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catchwebtools_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catchwebtools_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catchwebtools_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catchwebtools_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catchwebtools_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catchwebtools_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catchwebtools_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'catchwebtools_seo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'catchwebtools_seo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'catchwebtools_seo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'catchwebtools_seo_keywords'"
