#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bprwg_activate_message'
wp option delete 'bprwg_approved_message'
wp option delete 'bprwg_denied_message'
wp option delete 'bprwg_admin_pending_message'
wp option delete 'bprwg_user_pending_message'
wp option delete 'bprwg_moderate'
wp option delete 'bprwg_privacy_network'
wp option delete 'bprwg_enable_notifications'
wp option delete 'bprwg_blocked_ips'
wp option delete 'bprwg_blocked_emails'

# Delete Transients
wp transient delete 'bpro_user_count'
wp transient delete 'bpro_total_user_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bprwg_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bprwg_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bprwg_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bprwg_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bprwg_is_moderated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bprwg_is_moderated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bprwg_is_moderated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bprwg_is_moderated'"
