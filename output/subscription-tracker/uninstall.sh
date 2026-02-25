#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'palmsst_currency'
wp option delete 'palmsst_alert_days'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_palmsst_renewal_alert_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_palmsst_renewal_alert_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_palmsst_renewal_alert_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_palmsst_renewal_alert_dismissed'"
