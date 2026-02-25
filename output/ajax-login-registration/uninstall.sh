#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'registration_email'
wp option delete 'activation_email'
wp option delete 'reset_password_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_activated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activation_token_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activation_token_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activation_token_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activation_token_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_active_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_active_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_active_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_active_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rp_activation_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rp_activation_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rp_activation_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rp_activation_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rp_activation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rp_activation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rp_activation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rp_activation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rp_password_reset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rp_password_reset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rp_password_reset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rp_password_reset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
