#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluent_form_chip_public_key'
wp option delete '__fluentform_payment_module_settings'
wp option delete 'csf_demo_mode'
wp option delete 'fluent_form_chip'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
