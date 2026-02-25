#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'support_admin_email'
wp option delete 'support_admin_from_email'
wp option delete 'ticket_sc_page'
wp option delete 'ticket_before_login_message_create'
wp option delete 'ticket_before_login_message_search'
wp option delete 'ticket_before_login_message_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ticket_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ticket_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ticket_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ticket_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_post_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_post_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_post_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_post_date'"
