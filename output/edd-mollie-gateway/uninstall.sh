#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_mollie_general_settings'
wp option delete 'edd_mollie_settings'
wp option delete 'edd_settings'
wp option delete 'edd_mollie_chargeback_notices'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mollie_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mollie_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mollie_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mollie_customer_id'"
