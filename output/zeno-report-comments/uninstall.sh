#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zrcmnt_threshold'
wp option delete 'zrcmnt_admin_notification'
wp option delete 'zrcmnt_admin_notification_each'
wp option delete 'zrcmnt_spamcheck'
wp option delete 'zrcmnt_ipblock_from_reporting'
wp option delete 'disallowed_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zrcmnt_reported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zrcmnt_reported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zrcmnt_reported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zrcmnt_reported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zrcmnt_moderated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zrcmnt_moderated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zrcmnt_moderated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zrcmnt_moderated'"
