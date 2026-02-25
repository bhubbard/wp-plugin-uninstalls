#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thlogin_settings'
wp option delete 'thlogin_stored_slug'
wp option delete 'rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thlogin_email_verification_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thlogin_email_verification_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thlogin_email_verification_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thlogin_email_verification_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thlogin_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thlogin_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thlogin_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thlogin_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thlogin_pending_approval'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thlogin_pending_approval'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thlogin_pending_approval'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thlogin_pending_approval'"
