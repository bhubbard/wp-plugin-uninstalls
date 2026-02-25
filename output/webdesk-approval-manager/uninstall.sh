#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webdesk_approval_dynamic_fields'
wp option delete 'customer_approval_plugin_version'
wp option delete 'webdesk_approval_version'
wp option delete 'ca_dynamic_fields'
wp option delete 'ca_approveReject'
wp option delete 'webdesk_approval_approveReject'
wp option delete 'ca_emailSent'
wp option delete 'webdesk_approval_emailSent'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webdesk_approval_approveReject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webdesk_approval_approveReject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webdesk_approval_approveReject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webdesk_approval_approveReject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webdesk_approval_emailSent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webdesk_approval_emailSent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webdesk_approval_emailSent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webdesk_approval_emailSent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_registration_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_registration_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_registration_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_registration_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customer_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customer_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customer_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customer_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
