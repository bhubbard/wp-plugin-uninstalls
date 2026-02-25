#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nip_field_wc_settings'
wp option delete 'nip_field_wc_gus'
wp option delete 'nip_field_wc_messages'
wp option delete 'nip_field_wc_banner_dismissed'
wp option delete 'nip_field_wc_banner_remind_later'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_nip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_nip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_nip'"
