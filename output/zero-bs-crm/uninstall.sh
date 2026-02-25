#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zbs-global-perf-test'
wp option delete 'jpcrm_do_redirect'
wp option delete 'jpcrm_wizard_completed'
wp option delete 'zbs_wizard_run'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zbs_initopts_%'"
wp option delete 'zbsmigrationblockerrors'
wp option delete 'zbs_db_creation_errors'
wp option delete 'jpcrm_hide_woo_promo'
wp option delete 'jpcrm_hide_track_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zbs_closers_%'"
wp option delete 'zbsfeedback'
wp option delete 'zbs-crm-notifications'
wp option delete 'jpcrm_skip_wizard'
wp option delete 'zbs_db_migration_253'
wp option delete 'zbs_db_migration_300'
wp option delete 'zbsmigrations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zbsmigration%'"
wp option delete 'zbsmigrationsdal'
wp option delete 'zbsmigrationpreloadcatch'
wp option delete 'jpcrm_tasknotificationtemplate'
wp option delete 'jpcrm_invnotificationtemplate'
wp option delete 'zbs_db_migration_253_errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'jpcrm_package_fail_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_feature_alert'"
wp option delete 'jpcrm_flush_rewrite_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_bk'"
wp option delete 'zbs_temp_legacy_update_msg'
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'
wp option delete 'jpcrm_client_portal_rewrite_rules_changed'
wp option delete 'jpcrm_woosync_52_mig'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'jpcrm_woosync_52_mig_backup'

# Delete Transients
wp transient delete 'jpcrm_extension_messages'
wp transient delete 'jpcrm-license-modal'
wp transient delete 'jpcrm_defer_wizard'
wp transient delete 'crm-segment-condition-missing-arg'
wp transient delete 'zbs-migration-general-errors'
wp transient delete 'zbs-nag-license-key-now'
wp transient delete 'zbs-nag-extension-update-now'
wp transient delete 'jpcrm_crm_snapshot'
wp transient delete 'jetpack_is_single_user'
wp transient delete 'clientportalpro.incompatible.version.deactivated'
wp transient delete 'woosync.syncsite.paused.errors'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_jpcrm_woo_connect_token_%' OR option_name LIKE '_site_transient_jpcrm_woo_connect_token_%'"
wp transient delete 'jpcrm_woo_newly_authenticated'
wp transient delete 'woosync.conflict.deactivated'

# Clear Cron Jobs
wp cron event delete 'jpcrm_cron_watcher'
wp cron event delete 'jpcrm_mailpoet_sync'
wp cron event delete 'jpcrm_woosync_sync'
wp cron event delete 'zerobscrm_woosync_hourly_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_dashboard_sales_funnel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_dashboard_sales_funnel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_dashboard_sales_funnel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_dashboard_sales_funnel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_dashboard_revenue_chart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_dashboard_revenue_chart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_dashboard_revenue_chart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_dashboard_revenue_chart'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_dashboard_recent_activity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_dashboard_recent_activity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_dashboard_recent_activity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_dashboard_recent_activity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings_dashboard_latest_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings_dashboard_latest_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings_dashboard_latest_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings_dashboard_latest_contacts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zbs-hide-wp-menus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zbs-hide-wp-menus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zbs-hide-wp-menus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zbs-hide-wp-menus'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zbs_customer_invoice_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zbs_customer_invoice_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zbs_customer_invoice_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zbs_customer_invoice_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zbs_inv_sendattachments'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zbs_inv_sendattachments'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zbs_inv_sendattachments'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zbs_inv_sendattachments'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zbs_customer_invoices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zbs_customer_invoices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zbs_customer_invoices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zbs_customer_invoices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zbs-hopscotch-tour'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zbs-hopscotch-tour'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zbs-hopscotch-tour'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zbs-hopscotch-tour'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_login'"
