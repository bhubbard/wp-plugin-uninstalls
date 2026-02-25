#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'id_modules'
wp option delete 'is_id_pro'
wp option delete 'wiz-configure'
wp option delete 'idf_commerce_platform'
wp option delete 'id_purchase_default'
wp option delete 'rewrite_rules'
wp option delete 'md_receipt_settings'
wp option delete 'idc_global_currency'
wp option delete 'recently_activated'
wp option delete 'helix_settings'
wp option delete 'idhelix_waitlist_length'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_view_order_page_id'
wp option delete 'woocommerce_edit_address_page_id'
wp option delete 'id_recaptcha_settings'
wp option delete 'idf_transfer_key'
wp option delete 'idf_wc_checkout_url'
wp option delete 'active_sitewide_plugins'
wp option delete 'idf_registered'
wp option delete 'idf_regsitered_post'
wp option delete 'id_account'
wp option delete 'idf_license_name'
wp option delete 'is_idc_licensed'
wp option delete 'is_id_basic'
wp option delete 'idf_license_type'
wp option delete 'license_expiry'
wp option delete 'license_item_id'
wp option delete 'license_post_id'
wp option delete 'idcf_updated'
wp option delete 'idf_license_entry_options'
wp option delete 'id_license_key'
wp option delete 'license_payment_id'
wp option delete 'idf_key'
wp option delete 'sidebars_widgets'
wp option delete 'md_dash_settings'
wp option delete 'idf_current_version'
wp option delete 'idf_key_transfer'
wp option delete 'idf_install_flags'

# Delete Transients
wp transient delete 'id_modules'
wp transient delete 'idf_transient_cache'
wp transient delete 'update_plugins'
wp transient delete 'idf_plugin_versions'
wp transient delete 'idf_license_name'
wp transient delete 'is_id_pro'
wp transient delete 'is_idc_licensed'
wp transient delete 'is_id_basic'

# Clear Cron Jobs
wp cron event delete 'schedule_twicedaily_idf_cron'
wp cron event delete 'idf_schedule_install'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ign_project_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ign_project_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ign_project_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ign_project_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idhelix_waitlist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idhelix_waitlist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idhelix_waitlist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idhelix_waitlist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enable_creator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enable_creator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enable_creator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enable_creator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ide_user_projects'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ide_user_projects'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ide_user_projects'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ide_user_projects'"
