#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'giantwp_flatpercentage_discount'
wp option delete 'giantwp_bogo_discount'
wp option delete 'giantwp_shipping_discount'
wp option delete 'giantwp_bxgy_discount'
wp option delete 'giantwp_bulk_discount'
wp option delete 'giantwp_discountrules_settings'
wp option delete 'aio_bogo_discount'
wp option delete 'aio_bxgy_discount'
wp option delete 'GWPDR_installation_time'
wp option delete 'GWPDR_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'gwpdr_activation_redirect'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gwpdr_bogo_applied_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gwpdr_bogo_applied_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gwpdr_bogo_applied_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gwpdr_bogo_applied_rules'"
