#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jobs_button_bg_color'
wp option delete 'jobs_button_bg_color_hover'
wp option delete 'jobs_button_text_color'
wp option delete 'jobs_heading_text_color'
wp option delete 'jobs_subheading_text_color'
wp option delete 'jobs_list_item_bg'
wp option delete 'jobs_list_item_border'
wp option delete 'jobs_content_heading_color'
wp option delete 'jobs_content_text_color'
wp option delete 'jobs_button_roundness'
wp option delete 'jobs_box_roundness'
wp option delete 'jobs_apply_advanced'
wp option delete 'jobs_selected_schema'
wp option delete 'jobs_sidebar_position'
wp option delete 'jobs_metrics_shareable'
wp option delete 'jobs_metrics_notice_seen_v2'
wp option delete 'jobs_file_location_notice_seen_v2'
wp option delete 'jobs_posts_per_page'
wp option delete 'jobs_preview_cta'
wp option delete 'jobs_schema_type'
wp option delete 'jobs_custom_css'
wp option delete 'jobs_company_logo'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position_hiring_organization_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position_hiring_organization_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position_hiring_organization_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position_hiring_organization_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'sort-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'sort-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'sort-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sort-%'"
