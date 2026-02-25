#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_ek_is_styles_manager_cpt_flashed'
wp option delete 'editorskit-addon-template-library'
wp option delete 'editorskit-addon-styles-manager'
wp option delete 'shareablock_api_key'
wp option delete 'editorskit_activation_marker'
wp option delete 'editorskit_support_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsm_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsm_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsm_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsm_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsm_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsm_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsm_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsm_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gsm_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gsm_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gsm_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gsm_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_editorskit_title_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_editorskit_title_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_editorskit_title_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_editorskit_title_hidden'"
