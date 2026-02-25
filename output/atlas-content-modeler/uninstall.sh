#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'atlas_content_modeler_usage_tracking'
wp option delete 'atlas_content_modeler_post_types'
wp option delete 'atlas_content_modeler_taxonomies'
wp option delete 'atlas_content_modeler_current_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acm_hide_feedback_banner'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acm_hide_feedback_banner'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acm_hide_feedback_banner'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acm_hide_feedback_banner'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
