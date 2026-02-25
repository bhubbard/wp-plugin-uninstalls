#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webphysiology_portfolio_image_width'
wp option delete 'webphysiology_portfolio_debug_mode'
wp option delete 'webphysiology_portfolio_rewrite_slug'
wp option delete 'webphysiology_portfolio_display_labels'
wp option delete 'webphysiology_portfolio_thumbnail_generator'
wp option delete 'webphysiology_portfolio_sort_numerically'
wp option delete 'webphysiology_portfolio_message'
wp option delete 'webphysiology_portfolio_version'
wp option delete 'webphysiology_portfolio_database_version'
wp option delete 'version'
wp option delete 'webphysiology_portfolio_use_single_template'
wp option delete 'webphysiology_portfolio_custom_css_url'
wp option delete 'webphysiology_portfolio_mobile_styling'
wp option delete 'webphysiology_portfolio_overall_mobile_width'
wp option delete 'webphysiology_portfolio_max_img_height'
wp option delete 'webphysiology_portfolio_crop_thumbnail'
wp option delete 'webphysiology_portfolio_include_portfolio_tags_in_tag_cloud'
wp option delete 'webphysiology_portfolio_use_full_path'
wp option delete 'webphysiology_portfolio_legacy_even_odd_class'
wp option delete 'webphysiology_portfolio_display_desc_first'
wp option delete 'webphysiology_portfolio_skip_jQuery_register'
wp option delete 'webphysiology_portfolio_skip_fancybox_register'
wp option delete 'webphysiology_portfolio_use_stw_pro'
wp option delete 'webphysiology_portfolio_anchor_click_behavior'
wp option delete 'webphysiology_portfolio_use_stw'
wp option delete 'webphysiology_portfolio_stw_ak'
wp option delete 'webphysiology_portfolio_stw_sk'
wp option delete 'webphysiology_portfolio_pagepeeker_account'
wp option delete 'webphysiology_portfolio_allowed_image_sites'
wp option delete 'webphysiology_portfolio_display_portfolio_title'
wp option delete 'webphysiology_portfolio_display_portfolio_desc'
wp option delete 'webphysiology_portfolio_gridstyle'
wp option delete 'webphysiology_portfolio_gridcolor'
wp option delete 'webphysiology_portfolio_display_clientname'
wp option delete 'webphysiology_portfolio_display_siteurl'
wp option delete 'webphysiology_portfolio_display_tech'
wp option delete 'webphysiology_portfolio_label_width'
wp option delete 'webphysiology_portfolio_missing_image_url'
wp option delete 'webphysiology_portfolio_image_click_behavior'
wp option delete 'webphysiology_portfolio_display_credit'
wp option delete 'webphysiology_portfolio_delete_options'
wp option delete 'webphysiology_portfolio_delete_data'
wp option delete 'webphysiology_portfolio_items_per_page'
wp option delete 'webphysiology_portfolio_display_portfolio_type'
wp option delete 'webphysiology_portfolio_display_createdate'
wp option delete 'webphysiology_portfolio_use_css'
wp option delete 'webphysiology_portfolio_overall_width'
wp option delete 'webphysiology_portfolio_header_color'
wp option delete 'webphysiology_portfolio_link_color'
wp option delete 'webphysiology_portfolio_odd_stripe_color'
wp option delete 'webphysiology_portfolio_even_stripe_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_webphys_portfolio_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_webphys_portfolio_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_webphys_portfolio_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_webphys_portfolio_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_createdate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_createdate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_createdate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_createdate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_clientname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_clientname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_clientname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_clientname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_technical_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_technical_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_technical_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_technical_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_siteurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_siteurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_siteurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_siteurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imageurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imageurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imageurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imageurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sortorder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sortorder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sortorder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sortorder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_portfolio_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_portfolio_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_portfolio_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_portfolio_type'"
