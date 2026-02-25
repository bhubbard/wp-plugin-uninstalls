#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmf_options'
wp option delete 'cop_options'
wp option delete 'sef_options'
wp option delete 'wop_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmf-text-after-price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmf-text-after-price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmf-text-after-price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmf-text-after-price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmf-text-under-price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmf-text-under-price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmf-text-under-price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmf-text-under-price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wmf_alt_paypal_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wmf_alt_paypal_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wmf_alt_paypal_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wmf_alt_paypal_email'"
