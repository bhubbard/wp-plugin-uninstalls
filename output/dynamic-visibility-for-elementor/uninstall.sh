#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcf-fields'
wp option delete 'trp_settings'
wp option delete 'dce_visibility_max'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpcf-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpcf-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpcf-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpcf-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'user_registration_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'user_registration_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'user_registration_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'user_registration_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dce_visibility_max_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dce_visibility_max_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dce_visibility_max_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dce_visibility_max_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
