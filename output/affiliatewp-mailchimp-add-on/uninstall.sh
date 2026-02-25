#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'tbz_affwp_edd_mailchimp_lists'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tbz_affwp_subscribed_to_mailchimp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tbz_affwp_subscribed_to_mailchimp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tbz_affwp_subscribed_to_mailchimp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tbz_affwp_subscribed_to_mailchimp'"
