#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_login_crendentials'
wp option delete 'tpsa_admin-bar_pro_fields'
wp option delete 'tp_admin_safety_guard_deactivate_token'
wp option delete 'tpsa_version'
wp option delete 'tpsm_is_setup_wizard'

# Delete Transients
wp transient delete 'tpsm_do_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'remove_old_block_users_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpsa_otp_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpsa_otp_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpsa_otp_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpsa_otp_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tpsm_dismissed_setup_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tpsm_dismissed_setup_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tpsm_dismissed_setup_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tpsm_dismissed_setup_notice'"
