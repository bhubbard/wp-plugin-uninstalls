#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pwoosms_table_archive'
wp option delete 'pwoosms_table_contacts'
wp option delete 'pwoosms_hide_about_page'
wp option delete 'pwoosms_redirect_about_page'
wp option delete 'woocommerce_notify_low_stock_amount'
wp option delete 'woocommerce_manage_stock'
wp option delete 'pwsms_notices'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'pwoosms_update_product_admin_meta'
wp option delete 'pwoosms_ads_noticemelli'
wp option delete 'pwoosms_update_gateway_options'
wp option delete 'pwoosms_table_contacts_created'
wp option delete 'pwoosms_table_contacts_updated'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_pwsms_notice_%' OR option_name LIKE '_site_transient_pwsms_notice_%'"
wp transient delete 'pwsms_notice_all'
wp transient delete 'pwsms_update_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
