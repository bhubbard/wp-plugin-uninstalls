#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_taxonomies_hierarchy_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_comments_hierarchy_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_posts_hierarchy_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_comment_posts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_wp_all_import_functions_hash_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore'"
wp option delete 'wpai_parser_type'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_'"
wp option delete 'wpai_parser_type_0'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpai_parser_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'default_term_%'"
wp option delete 'default_product_cat'
wp option delete 'post_count'
wp option delete 'acf_addon_notice_ignore'
wp option delete 'wp_all_export_notice_ignore'
wp option delete 'active_sitewide_plugins'
wp option delete 'pmxi_is_migrated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_Options'"
wp option delete 'wpai_modal_review_dismissed'
wp option delete 'wpai_modal_review_dismissed_time'
wp option delete 'wpai_modal_review_dismissed_modals'
wp option delete 'wpai_modal_review_dismissed_times'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
