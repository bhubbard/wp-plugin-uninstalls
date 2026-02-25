#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enocp_from'
wp option delete 'enocp_cc'
wp option delete 'enocp_subject'
wp option delete 'enocp_email_content'
wp option delete 'enocp_bcc'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'allow_notification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'allow_notification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'allow_notification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'allow_notification'"
