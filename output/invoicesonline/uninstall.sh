#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'io_api_username'
wp option delete 'io_api_password'
wp option delete 'io_business_id'
wp option delete 'joi_sync_enabled'
wp option delete 'joi_sync_interval'
wp option delete 'autoinvoice'
wp option delete 'IORegionalCompanies'
wp option delete 'vatapplies'
wp option delete 'amountsincludevat'
wp option delete 'voucherchecktag'
wp option delete 'checkcredits'
wp option delete 'vouchercheck'
wp option delete 'regionalCompanies'

# Delete Transients
wp transient delete 'ClientID'

# Clear Cron Jobs
wp cron event delete 'saas_cron_sync_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'io_proforma_invoice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'io_proforma_invoice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'io_proforma_invoice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'io_proforma_invoice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ClientID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ClientID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ClientID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ClientID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'io_client_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'io_client_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'io_client_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'io_client_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iostatus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iostatus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iostatus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iostatus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'io_cart_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'io_cart_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'io_cart_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'io_cart_total'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'io_ignore_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'io_ignore_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'io_ignore_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'io_ignore_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_payment_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_payment_method'"
