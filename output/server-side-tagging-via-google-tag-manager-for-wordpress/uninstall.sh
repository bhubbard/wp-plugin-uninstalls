#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ee_options'
wp option delete 'ee_remarketing_snippets'
wp option delete 'ee_api_data'
wp option delete 'ee_additional_data'
wp option delete 'conv_selected_events'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_default_country'
wp option delete 'convsst_msg_nofifications'
wp option delete 'convsst_sst_pcount'
wp option delete 'ee_conversio_send_to'
wp option delete 'ga_EC'
wp option delete 'google_ads_conversion_tracking'
wp option delete 'ee_ads_tracking_id'
wp option delete 'ads_ert'
wp option delete 'ads_edrt'
wp option delete 'ee_customer_gmail'
wp option delete 'convsst_ut'
wp option delete 'ee_customer_gtm_gmail'
wp option delete 'conv_sst_server_hits_db'
wp option delete 'convsst_prod_mapped_attrs'
wp option delete 'convsst_prod_mapped_cats'
wp option delete 'convsst_ads_tracking_id'
wp option delete 'conv_gads_currency'

# Delete Transients
wp transient delete 'conv_sst_server_hits'
wp transient delete '_conversios_activation_redirect_sst'

# Clear Cron Jobs
wp cron event delete 'convsst_dbnewfeature_schedule_hook'
wp cron event delete 'tvc_add_cron_interval_for_product_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tvc_tracked_refund'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tvc_tracked_refund'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tvc_tracked_refund'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tvc_tracked_refund'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_primary_product_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tracked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tracked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tracked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tracked'"
