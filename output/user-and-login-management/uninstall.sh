#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'moul_mg_default_redirect_after_login_url'
wp option delete 'moul_mg_default_redirect_after_logout_url'
wp option delete 'moul_mg_protect_content_by_login_enabled'
wp option delete 'moul_mg_timeout_value'
wp option delete 'moul_mg_default_customer_key'
wp option delete 'moul_mg_default_api_key'
wp option delete 'moul_mg_admin_phone'
wp option delete 'moul_mg_local_message'
wp option delete 'moul_mg_public_pages_enable'
wp option delete 'moul_mg_public_pages_list'
wp option delete 'moul_mg_password'
wp option delete 'moul_mg_admin_customer_key'
wp option delete 'moul_mg_admin_notification_emails'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
