#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpblog_post_layouts_activated_time'
wp option delete 'wpblog_post_layouts_upgrade_premium'
wp option delete 'wpblog_post_layouts_premium_prefix'

# Delete Transients
wp transient delete 'wp-blog-post-layouts-admin-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_blog_post_layouts_ignore_review_notice_partially'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_blog_post_layouts_ignore_review_notice_partially'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_blog_post_layouts_ignore_review_notice_partially'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_blog_post_layouts_ignore_review_notice_partially'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_blog_post_layouts_ignore_theme_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_blog_post_layouts_ignore_theme_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_blog_post_layouts_ignore_theme_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_blog_post_layouts_ignore_theme_review_notice'"
