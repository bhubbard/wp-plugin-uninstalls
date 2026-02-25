#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aisp_cc_email_remove_data_on_uninstall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_email_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_email_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_email_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_email_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_email_1_statuses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_email_1_statuses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_email_1_statuses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_email_1_statuses'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_email_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_email_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_email_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_email_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_email_2_statuses'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_email_2_statuses'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_email_2_statuses'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_email_2_statuses'"
