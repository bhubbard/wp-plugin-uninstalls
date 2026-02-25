#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'gravitecnet_db_version'

# Delete Transients
wp transient delete 'gravitecnet_transient_error'
wp transient delete 'gravitecnet_transient_success'

# Clear Cron Jobs
wp cron event delete 'gravitecnet_abandoned_cart'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'recipients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'response_body'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'response_body'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'response_body'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'response_body'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'send_gravitec_push'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'send_gravitec_push'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'send_gravitec_push'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'send_gravitec_push'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gravitec_meta_box_implemented'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gravitec_meta_box_implemented'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gravitec_meta_box_implemented'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gravitec_meta_box_implemented'"
