#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ihafs_diagnostic_data_agreed'
wp option delete 'ihafs_diagnostic_data_notice'
wp option delete 'ihafs_rating_already_rated'
wp option delete 'ihafs_installed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ihafs_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ihafs_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ihafs_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ihafs_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ihafs_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ihafs_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ihafs_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ihafs_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ihafs_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ihafs_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ihafs_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ihafs_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ihafs_show_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ihafs_show_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ihafs_show_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ihafs_show_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ihafs_pages_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ihafs_pages_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ihafs_pages_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ihafs_pages_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ihafs_posts_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ihafs_posts_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ihafs_posts_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ihafs_posts_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ihafs_categories_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ihafs_categories_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ihafs_categories_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ihafs_categories_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ihafs_tags_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ihafs_tags_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ihafs_tags_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ihafs_tags_list'"
