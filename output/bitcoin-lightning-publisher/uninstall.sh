#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lnp_general'
wp option delete 'lnp_connection'
wp option delete 'lnp_paywall'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bln_amount_received'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bln_amount_received'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bln_amount_received'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bln_amount_received'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lnp_ln_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lnp_ln_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lnp_ln_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lnp_ln_address'"
