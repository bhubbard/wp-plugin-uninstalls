#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'azm_woo_rac_defualt_campaign'
wp option delete 'azm_woo_rac_manual_campaign'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_unsubscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_unsubscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_unsubscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_unsubscribed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'azr-visitor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'azr-visitor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'azr-visitor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'azr-visitor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_azr_visitor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_azr_visitor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_azr_visitor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_azr_visitor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_status'"
