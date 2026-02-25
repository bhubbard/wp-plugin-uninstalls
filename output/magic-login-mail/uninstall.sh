#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magic_login_mail_valid_errors'
wp option delete 'magic_login_mail_email_errors'
wp option delete 'magic_login_mail_email_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'magic_login_mail_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'magic_login_mail_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'magic_login_mail_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'magic_login_mail_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_expiration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_expiration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_expiration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_expiration'"
