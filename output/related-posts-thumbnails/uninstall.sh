#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'relpoststh_bordercolor'
wp option delete 'relpoststh_background'
wp option delete 'relpoststh_hoverbackground'
wp option delete 'relpoststh_fontsize'
wp option delete 'relpoststh_fontcolor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpb_sdk_%'"
wp option delete 'relpoststh_single_only'
wp option delete 'relpoststh_column'
wp option delete 'relpoststh_column_t'
wp option delete 'relpoststh_column_m'
wp option delete 'relpoststh_image_size'
wp option delete 'relpoststh_mobile_view'
wp option delete 'relpoststh_show_taxonomy'
wp option delete 'relpoststh_post_types'
wp option delete 'relpoststh_onlywiththumbs'
wp option delete 'relpoststh_articlefirstimage'
wp option delete 'relpoststh_show_date'
wp option delete 'relpoststh_output_style'
wp option delete 'relpoststh_date_format'
wp option delete 'relpoststh_cleanhtml'
wp option delete 'relpoststh_auto'
wp option delete 'relpoststh_top_text'
wp option delete 'relpoststh_number'
wp option delete 'relpoststh_relation'
wp option delete 'relpoststh_default_image'
wp option delete 'relpoststh_poststhname'
wp option delete 'relpoststh_fontfamily'
wp option delete 'relpoststh_textlength'
wp option delete 'relpoststh_excerptlength'
wp option delete 'relpoststh_thsource'
wp option delete 'relpoststh_customfield'
wp option delete 'relpoststh_theme_resize_url'
wp option delete 'relpoststh_customwidth'
wp option delete 'relpoststh_customheight'
wp option delete 'relpoststh_textblockheight'
wp option delete 'rpt_post_sort'
wp option delete 'relpoststh_categories'
wp option delete 'relpoststh_categoriesall'
wp option delete 'relpoststh_show_categoriesall'
wp option delete 'relpoststh_show_categories'
wp option delete 'relpoststh_devmode'
wp option delete 'relpoststh_title_tag'
wp option delete 'relpoststh_spacing'
wp option delete 'relpoststh_startdate'
wp option delete 'relpoststh_custom_taxonomies'
wp option delete 'wpb_sdk_module_id'
wp option delete 'wpb_sdk_module_slug'
wp option delete 'wpb_api_cache'
wp option delete 'wpb_sdk_related-posts-thumbnails'
wp option delete '_rpt_optin'
wp option delete 'rpt_review_dismiss'
wp option delete 'rpt_active_time'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_yoast_wpseo_primary_%'"
