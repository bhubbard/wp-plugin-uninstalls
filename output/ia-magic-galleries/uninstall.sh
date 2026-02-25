#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_iamg_activating_plugin'
wp option delete '_iamg_activated_plugin'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_called_reg_client'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_version'"
wp option delete 'iamg_install_version'
wp option delete 'iamg_install_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%categoryShow'"
wp option delete 'iamg_after_install'
wp option delete 'iamg_redirect_overview'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_gallery_count'"

# Delete Transients
wp transient delete 'iamg_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'id_local'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'id_local'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'id_local'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'id_local'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presentation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presentation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presentation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presentation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presentation_parameters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presentation_parameters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presentation_parameters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presentation_parameters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presentation_dependence'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presentation_dependence'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presentation_dependence'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presentation_dependence'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pages'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'presentation_history'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'presentation_history'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'presentation_history'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'presentation_history'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'encrypted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'encrypted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'encrypted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'encrypted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_iamg_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_iamg_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_iamg_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_iamg_custom_css'"
