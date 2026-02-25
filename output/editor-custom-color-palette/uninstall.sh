#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eccp_settings_default_settings'
wp option delete 'eccp_multiple_setting'
wp option delete 'eccp_setting_editor_text_size'
wp option delete 'eccp_settings_custom_gutenberg_editor'
wp option delete 'eccp_settings_custom_gutenberg_block'
wp option delete 'eccp_settings_reusable_blocks'
wp option delete 'eccp_settings_elementor'
wp option delete 'eccp_settings_divi_theme'
wp option delete 'eccp_settings_custom_back_office'
wp option delete 'eccp_settings_custom_front_end'
wp option delete 'ecpp_multiple_setting'
wp option delete 'active_plugin_version'
wp option delete 'elementor_active_kit'
wp option delete 'et_divi'
wp option delete 'wpseo_social'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'countdown_timer_date_events'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'countdown_timer_date_events'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'countdown_timer_date_events'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'countdown_timer_date_events'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remove_blocks_before_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remove_blocks_before_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remove_blocks_before_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remove_blocks_before_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'remove_blocks_after_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'remove_blocks_after_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'remove_blocks_after_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'remove_blocks_after_content'"
