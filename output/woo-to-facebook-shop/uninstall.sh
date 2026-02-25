#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wctofb_api'
wp option delete 'wctofb_apikey_success'
wp option delete 'wctofb_runonce'
wp option delete 'wctofb_pg_version'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wctofb_api_success'

# Clear Cron Jobs
wp cron event delete 'wctofbcronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
