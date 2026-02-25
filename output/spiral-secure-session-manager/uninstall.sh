#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sssm_version'
wp option delete 'sssm_step3_hidden'
wp option delete 'sssm_step3'
wp option delete 'sssm_step4'
wp option delete 'sssm_skip_activation'
wp option delete 'sssm_step5'
wp option delete 'sssm_step6'
wp option delete 'sssm_step1'
wp option delete 'sssm_is_cloned_setting'
wp option delete 'sssm_step2'
wp option delete 'version'
wp option delete 'spiral_member_login'
wp option delete 'spiral_secure_session_manager'
wp option delete 'sssm_authentication_key'
wp option delete 'sssm_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sssm_session_expires_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sssm_session_%'"
wp option delete 'sssm_is_blank_page'
wp option delete 'sml_is_setup'
wp option delete 'sssm_is_setup'
wp option delete 'sssm_url_api_mode'
wp option delete 'sssm_session_id'
wp option delete 'sssm_plugin_install_date'
wp option delete 'ssp_activate_step'
wp option delete 'ssp_activate_screen'
wp option delete 'is_setup'

# Delete Transients
wp transient delete 'sssm_activation_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sssm_auth_%' OR option_name LIKE '_site_transient_sssm_auth_%'"
wp transient delete 'sssm_login_error'
wp transient delete 'sssm_regenerate_page_message'
wp transient delete 'sssm_clear_cache_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'soarsomngat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'soarsomngat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'soarsomngat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'soarsomngat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sssm_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sssm_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sssm_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sssm_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spiral-s-member-page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spiral-s-member-page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spiral-s-member-page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spiral-s-member-page'"
