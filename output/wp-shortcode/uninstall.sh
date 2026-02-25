#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_shortcode_activated'
wp option delete 'wp_shortcode_notice_views'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_shortcode_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_shortcode_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_shortcode_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_shortcode_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_shortcode_ignore_notice_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_shortcode_ignore_notice_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_shortcode_ignore_notice_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_shortcode_ignore_notice_2'"
