#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'give_auto_append_country_code'
wp option delete 'give_bsecure_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsecure_order_ref'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsecure_order_ref'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsecure_order_ref'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsecure_order_ref'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donor_contact'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donor_contact'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donor_contact'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donor_contact'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'country_calling_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'country_calling_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'country_calling_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'country_calling_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_give_donor_contact_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_give_donor_contact_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_give_donor_contact_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_give_donor_contact_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bsecure_order_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bsecure_order_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bsecure_order_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bsecure_order_type'"
