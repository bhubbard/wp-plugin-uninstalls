#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'sky_addons_inactive_extensions'
wp option delete 'elementor_css_print_method'
wp option delete 'sky_addons_pro_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_elementor_remote_info_api_data_%'"
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'
wp option delete 'sky_addons_installed'
wp option delete 'sky_addons_first_version'
wp option delete 'sky_addons_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_notice_%' OR option_name LIKE '_site_transient_dismissed_notice_%'"
wp transient delete 'sky_black_friday_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sky_video_link_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sky_video_link_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sky_video_link_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sky_video_link_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wowdevs_theme_builder_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wowdevs_theme_builder_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wowdevs_theme_builder_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wowdevs_theme_builder_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
