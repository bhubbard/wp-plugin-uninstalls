#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpscreens_licence'
wp option delete 'wpscreens_valid_licance'
wp option delete 'wpscreens_valid_licence_addon'
wp option delete 'addon_increment_valid'
wp option delete 'wpscreens_option_name'
wp option delete 'wpscreen_addon_licence'
wp option delete 'wpscreens_last_update_addon'
wp option delete 'wpscreens_last_update'
wp option delete 'wpscreens_valid_licence_message_addon'
wp option delete 'wpscreens_valid_licance_message'
wp option delete 'acf_version'
wp option delete 'acf_pro_license'
wp option delete 'wpscreen_custom_define'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'acf_plugin_updates'
wp transient delete 'wpscrn_acf_update_notice_dismissed'
wp transient delete 'wpscrn_acf_no_update_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'slider_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'slider_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'slider_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'slider_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'depicter-slider-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'depicter-slider-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'depicter-slider-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'depicter-slider-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layer-slider-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layer-slider-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layer-slider-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layer-slider-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rev-slider-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rev-slider-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rev-slider-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rev-slider-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart-slider-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart-slider-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart-slider-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart-slider-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acf_user_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allorany'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hide_on_screen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_pa_screen-limits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_pa_screen-limits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_pa_screen-limits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_pa_screen-limits'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpscreen_custom_define'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpscreen_custom_define'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpscreen_custom_define'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpscreen_custom_define'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'splitscreen'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'splitscreen'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'splitscreen'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'splitscreen'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partition_partition_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partition_partition_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partition_partition_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partition_partition_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'partition_partition_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'partition_partition_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'partition_partition_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'partition_partition_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsplitscreen_partition_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsplitscreen_partition_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsplitscreen_partition_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsplitscreen_partition_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpsplitscreen_partition_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpsplitscreen_partition_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpsplitscreen_partition_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpsplitscreen_partition_2'"
