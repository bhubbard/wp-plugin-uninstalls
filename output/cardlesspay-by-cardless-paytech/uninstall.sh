#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cardless_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cardlessmoney_payment_check_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cardlessmoney_payment_check_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cardlessmoney_payment_check_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cardlessmoney_payment_check_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cardlessmoney_payment_check_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cardlessmoney_payment_check_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cardlessmoney_payment_check_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cardlessmoney_payment_check_number'"
