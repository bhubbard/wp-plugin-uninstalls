#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'success_page'
wp option delete 'failure_page'
wp option delete 'test_mode'
wp option delete 'merchant_id'
wp option delete 'public_key'
wp option delete 'private_key'
wp option delete 'tokenization_key'
wp option delete 'acwp_currency'
wp option delete 'acwp_format'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_form_settings_meta_box_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_form_settings_meta_box_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_form_settings_meta_box_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_form_settings_meta_box_key'"
