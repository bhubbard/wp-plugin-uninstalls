#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'negpaywc_plugin_dismiss_rating_notice'
wp option delete 'negpaywc_plugin_no_thanks_rating_notice'
wp option delete 'negpay_plugin_installed_time'

# Delete Transients
wp transient delete 'negpaywc-admin-notice-on-activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_negpaywc_order_paid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_negpaywc_order_paid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_negpaywc_order_paid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_negpaywc_order_paid'"
