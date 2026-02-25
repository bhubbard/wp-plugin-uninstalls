#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dn_checkout_extra_fields-fields'
wp option delete 'dn_checkout_extra_fields-last_id'
wp option delete 'dn_checkout_extra_fields-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dn_checkout_extra_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dn_checkout_extra_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dn_checkout_extra_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dn_checkout_extra_fields'"
