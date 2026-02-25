#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rspdef_activation_time'
wp option delete 'rspdef_tour_shown_once'
wp option delete 'rspdef_tour_started'
wp option delete 'rspdef_review_notice_shown'

# Delete Transients
wp transient delete 'rspdef_definitions_count'
wp transient delete 'rspdef_found_in_posts_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rspdef_sorted_metaboxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rspdef_sorted_metaboxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rspdef_sorted_metaboxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rspdef_sorted_metaboxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'definition_link_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'definition_link_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'definition_link_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'definition_link_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'definition_disable_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'definition_disable_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'definition_disable_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'definition_disable_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'used_definitions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'used_definitions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'used_definitions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'used_definitions'"
