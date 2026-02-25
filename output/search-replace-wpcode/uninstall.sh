#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsrw_admin_notices'
wp option delete 'wsrw_activated'
wp option delete 'wsrw_install'
wp option delete 'wsrw_process'
wp option delete 'wsrw_search_history'
wp option delete 'wsrw_connect_token'
wp option delete 'wsrw_connect'

# Delete Transients
wp transient delete 'wsrw_just_activated'
wp transient delete 'wsrw_lite_just_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsrw_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsrw_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsrw_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsrw_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wsrw_dismissed_review_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wsrw_dismissed_review_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wsrw_dismissed_review_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wsrw_dismissed_review_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wsrw_replaced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wsrw_replaced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wsrw_replaced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wsrw_replaced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
