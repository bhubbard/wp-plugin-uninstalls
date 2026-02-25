#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce-ppcp-settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_ppcp_connection_url_%' OR option_name LIKE '_site_transient_wc_ppcp_connection_url_%'"
wp transient delete 'wc_ppcp_client_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppcp_target_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ppcp_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ppcp_customer_id'"
