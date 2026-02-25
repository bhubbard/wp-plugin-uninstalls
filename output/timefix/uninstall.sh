#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpm_timefix_general_settings'
wp option delete 'wpm_timefix_permalink_settings'
wp option delete 'wpm_timefix_payment_settings'
wp option delete 'wpm_timefix_offline_payment_settings'
wp option delete 'wpm_timefix_email_settings'
wp option delete 'wpm_timefix_needs_flush'

# Delete Transients
wp transient delete 'wpm_timefix_installing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_timefix_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_timefix_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_timefix_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_timefix_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_timefix_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_timefix_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_timefix_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_timefix_order'"
