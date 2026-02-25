#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpcp_notification_read_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpcp_notification_read_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpcp_notification_read_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpcp_notification_read_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpcp_assign_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpcp_assign_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpcp_assign_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpcp_assign_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpcp_notification_for_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpcp_notification_for_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpcp_notification_for_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpcp_notification_for_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tpcp_due_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tpcp_due_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tpcp_due_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tpcp_due_date'"
