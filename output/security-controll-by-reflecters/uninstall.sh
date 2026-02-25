#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wrs_sc_settings'
wp option delete 'scbr_settings'
wp option delete 'wrs_sc_blocked_users'
wp option delete 'scbr_blocked_users'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrs_sc_trusted_devices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrs_sc_trusted_devices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrs_sc_trusted_devices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrs_sc_trusted_devices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scbr_trusted_devices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scbr_trusted_devices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scbr_trusted_devices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scbr_trusted_devices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wrs_sc_siren_muted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wrs_sc_siren_muted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wrs_sc_siren_muted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wrs_sc_siren_muted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'scbr_siren_muted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'scbr_siren_muted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'scbr_siren_muted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'scbr_siren_muted'"
