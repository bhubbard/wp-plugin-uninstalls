#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_servientrega_shipping_settings'
wp option delete 'servientrega_validation_error'
wp option delete 'wf_dhl_shipping_validation_data'

# Clear Cron Jobs
wp cron event delete 'shipping_servientrega_wc_ss_schedule'
wp cron event delete 'shipping_servientrega_wc_ss_schedule_delete_old_pdfs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_custom_price_product_smp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'guide_servientrega'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'guide_servientrega'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'guide_servientrega'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'guide_servientrega'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_identificacion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_identificacion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_identificacion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_identificacion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_identificacion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_identificacion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_identificacion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_identificacion'"
