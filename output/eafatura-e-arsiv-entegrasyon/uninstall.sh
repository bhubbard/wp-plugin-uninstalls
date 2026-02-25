#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eaee_plugin_version'
wp option delete 'eaee_do_onboarding_redirect'
wp option delete 'eaee_enable_shipped_status'
wp option delete 'eaee_auto_packed_active'
wp option delete 'eaee_enable_shipped_email'
wp option delete 'eaee_after_update_notice'
wp option delete 'eaee_license_id'
wp option delete '_transient_eaee_customer_data_cache'
wp option delete '_site_transient_eaee_customer_data_cache'
wp option delete 'eaee_shipped_email_message'
wp option delete 'eaee_status_shipped_bg'
wp option delete 'eaee_status_shipped_text'
wp option delete 'eaee_status_packed_bg'
wp option delete 'eaee_status_packed_text'
wp option delete 'eaee_default_shipping_integration'
wp option delete 'eaee_shipping_company'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eaee_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_saved'"
wp option delete 'eaee_invoice_trigger'
wp option delete 'eaee_dash_stats_index'
wp option delete 'eaee_log_tracking_enabled'
wp option delete 'eafatura_uuid'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eaee_legacy_snapshot_%'"
wp option delete 'eaee_yurtici_normal_saved'
wp option delete 'eaee_yurtici_tahsilatli_saved'
wp option delete 'eaee_aras_normal_saved'
wp option delete 'eaee_aras_tahsilatli_saved'
wp option delete 'eaee_mng_normal_saved'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'eaee_cache_buster'

# Delete Transients
wp transient delete 'eaee_customer_data_cache'
wp transient delete 'eaee_last_api_update_time'
wp transient delete 'eaee_manual_action_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eaee_tax_rate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eaee_tax_rate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eaee_tax_rate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eaee_tax_rate'"
