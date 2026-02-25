#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc-afip-%'"
wp option delete 'wc-afip_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-notices' OR option_name LIKE '_site_transient_%-notices'"

# Clear Cron Jobs
wp cron event delete 'afip_retry_failed_orders'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_afip_document_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_afip_document_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_afip_document_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_afip_document_number'"
