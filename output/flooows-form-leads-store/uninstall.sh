#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lead_IP'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lead_IP'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lead_IP'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lead_IP'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_global_widget_included_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_global_widget_included_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_global_widget_included_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_global_widget_included_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_widget_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_widget_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_widget_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_widget_type'"
