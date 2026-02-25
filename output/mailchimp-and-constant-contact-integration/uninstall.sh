#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'mailchimp_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mailchimp_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mailchimp_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mailchimp_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mailchimp_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cc_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cc_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cc_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cc_checkout'"
