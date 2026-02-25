#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmp_measurement_units'
wp option delete 'wmp_bar_type'
wp option delete 'wmp_show_on_all_pages'
wp option delete 'wmp_dropdown_page'
wp option delete 'wmp_wrapper_class'
wp option delete 'wmp_display_blog'
wp option delete 'wmp_default_data_imported'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_wmp_blog_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_wmp_blog_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_wmp_blog_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_wmp_blog_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_display_blog_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_display_blog_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_display_blog_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_display_blog_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmp_show_blog_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmp_show_blog_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmp_show_blog_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmp_show_blog_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'warmp_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'warmp_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'warmp_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'warmp_post_status'"
