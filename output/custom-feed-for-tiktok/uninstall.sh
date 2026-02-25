#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsr_tiktok_global_settings'
wp option delete 'wpsr_tiktok_connected_sources_config'
wp option delete 'wpsr_tiktok_local_avatars'
wp option delete 'wpsr_tiktok_revoke_platform_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_global_settings'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsr_template_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsr_template_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsr_template_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsr_template_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsr_template_styles_config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsr_template_styles_config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsr_template_styles_config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsr_template_styles_config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsn_elementor_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsn_elementor_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsn_elementor_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsn_elementor_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsn_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsn_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsn_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsn_ids'"
