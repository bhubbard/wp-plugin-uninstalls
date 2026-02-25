#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myrepono'
wp option delete 'myrepono-plugin-config'
wp option delete 'myrepono-plugin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'myrepono_ignore_notice_alert_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'myrepono_ignore_notice_alert_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'myrepono_ignore_notice_alert_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'myrepono_ignore_notice_alert_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'myrepono_ignore_notice_setup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'myrepono_ignore_notice_setup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'myrepono_ignore_notice_setup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'myrepono_ignore_notice_setup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'myrepono_ignore_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'myrepono_ignore_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'myrepono_ignore_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'myrepono_ignore_notice_%'"
