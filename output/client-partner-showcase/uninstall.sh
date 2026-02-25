#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'client_partner_default_Settings_new'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_partner_Settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_partner_Settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_partner_Settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_partner_Settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nkcps_client_partner_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nkcps_client_partner_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nkcps_client_partner_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nkcps_client_partner_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nkcps_client_partner_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nkcps_client_partner_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nkcps_client_partner_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nkcps_client_partner_count'"
