#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_staff_listing_default_slug'
wp option delete '_staff_listing_default_name_singular'
wp option delete '_staff_listing_default_name_plural'
wp option delete '_staff_listing_custom_slug'
wp option delete '_staff_listing_custom_name_singular'
wp option delete '_staff_listing_custom_name_plural'
wp option delete '_staff_listing_default_html'
wp option delete '_staff_listing_default_css'
wp option delete '_staff_listing_default_tag_string'
wp option delete '_staff_listing_default_formatted_tag_string'
wp option delete '_staff_listing_default_tags'
wp option delete '_staff_listing_default_formatted_tags'
wp option delete '_staff_listing_write_external_css'
wp option delete '_staff_listing_custom_html'
wp option delete '_staff_listing_custom_css'
wp option delete '_staff_listing_flush_rewrite_rules_flag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_staff_member_bio'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_staff_member_bio'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_staff_member_bio'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_staff_member_bio'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_staff_member_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_staff_member_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_staff_member_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_staff_member_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_staff_member_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_staff_member_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_staff_member_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_staff_member_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_staff_member_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_staff_member_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_staff_member_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_staff_member_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_staff_member_fb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_staff_member_fb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_staff_member_fb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_staff_member_fb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_staff_member_tw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_staff_member_tw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_staff_member_tw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_staff_member_tw'"
