#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wltinv_isaf_next'
wp option delete 'wltinv_pvm_next'
wp option delete 'wltinv_seller_email'
wp option delete 'wltinv_token_ttl_min'
wp option delete 'wltinv_secure_download'
wp option delete 'wltinv_show_vat_breakdown_migrated'
wp option delete 'wltinv_show_vat_breakdown'
wp option delete 'wltinv_activated_at'
wp option delete 'wltinv_isaf_start'
wp option delete 'wltinv_pvm_start'

# Clear Cron Jobs
wp cron event delete 'wltinv_cleanup_tmp_pdfs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wltinv_supply_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wltinv_supply_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wltinv_supply_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wltinv_supply_date'"
