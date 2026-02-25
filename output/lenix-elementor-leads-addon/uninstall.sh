#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'elementor_leads_view_role'
wp option delete 'elementor_leads_edit_role'
wp option delete 'elementor_leads_enable_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lenix_lead_source_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lenix_lead_source_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lenix_lead_source_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lenix_lead_source_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_widget_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_widget_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_widget_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_widget_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_global_widget_included_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_global_widget_included_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_global_widget_included_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_global_widget_included_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'response_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'response_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'response_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'response_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_status'"
