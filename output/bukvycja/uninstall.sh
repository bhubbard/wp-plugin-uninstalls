#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dpd_bukvycja_plugin'
wp option delete 'DpdBukvicjaAdminOptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpd_bukvycja_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpd_bukvycja_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpd_bukvycja_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpd_bukvycja_enable'"
