#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enable_advanced_payment'
wp option delete 'advance_payment_type'
wp option delete 'advance_payment_value'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advance_payment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advance_payment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advance_payment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advance_payment'"
