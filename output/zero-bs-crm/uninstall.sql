-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zbs-global-perf-test', 'jpcrm_do_redirect', 'jpcrm_wizard_completed', 'zbs_wizard_run', 'zbsmigrationblockerrors', 'zbs_db_creation_errors', 'jpcrm_hide_woo_promo', 'jpcrm_hide_track_notice', 'zbsfeedback', 'zbs-crm-notifications', 'jpcrm_skip_wizard', 'zbs_db_migration_253', 'zbs_db_migration_300', 'zbsmigrations', 'zbsmigrationsdal', 'zbsmigrationpreloadcatch', 'jpcrm_tasknotificationtemplate', 'jpcrm_invnotificationtemplate', 'zbs_db_migration_253_errors', 'jpcrm_flush_rewrite_flag', 'zbs_temp_legacy_update_msg', 'jetpack_protect_active', 'jetpack_offline_mode', 'wpcom_public_coming_soon', 'jpcrm_client_portal_rewrite_rules_changed', 'jpcrm_woosync_52_mig', 'woocommerce_myaccount_page_id', 'jpcrm_woosync_52_mig_backup', 'jpcrm_extension_messages', 'jpcrm-license-modal', 'jpcrm_defer_wizard', 'crm-segment-condition-missing-arg', 'zbs-migration-general-errors', 'zbs-nag-license-key-now', 'zbs-nag-extension-update-now', 'jpcrm_crm_snapshot', 'jetpack_is_single_user', 'clientportalpro.incompatible.version.deactivated', 'woosync.syncsite.paused.errors', 'jpcrm_woo_newly_authenticated', 'woosync.conflict.deactivated');
DELETE FROM wp_options WHERE option_name LIKE 'zbs_initopts_%';
DELETE FROM wp_options WHERE option_name LIKE 'zbs_closers_%';
DELETE FROM wp_options WHERE option_name LIKE 'zbsmigration%';
DELETE FROM wp_options WHERE option_name LIKE 'jpcrm_package_fail_%';
DELETE FROM wp_options WHERE option_name LIKE '%_feature_alert';
DELETE FROM wp_options WHERE option_name LIKE '%_bk';
DELETE FROM wp_options WHERE option_name LIKE 'jpcrm_woo_connect_token_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('settings_dashboard_sales_funnel', 'settings_dashboard_revenue_chart', 'settings_dashboard_recent_activity', 'settings_dashboard_latest_contacts', 'zbs-hide-wp-menus', 'zbs_customer_invoice_meta', 'zbs_inv_sendattachments', 'zbs_customer_invoices', 'zbs-hopscotch-tour', 'last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('settings_dashboard_sales_funnel', 'settings_dashboard_revenue_chart', 'settings_dashboard_recent_activity', 'settings_dashboard_latest_contacts', 'zbs-hide-wp-menus', 'zbs_customer_invoice_meta', 'zbs_inv_sendattachments', 'zbs_customer_invoices', 'zbs-hopscotch-tour', 'last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('settings_dashboard_sales_funnel', 'settings_dashboard_revenue_chart', 'settings_dashboard_recent_activity', 'settings_dashboard_latest_contacts', 'zbs-hide-wp-menus', 'zbs_customer_invoice_meta', 'zbs_inv_sendattachments', 'zbs_customer_invoices', 'zbs-hopscotch-tour', 'last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('settings_dashboard_sales_funnel', 'settings_dashboard_revenue_chart', 'settings_dashboard_recent_activity', 'settings_dashboard_latest_contacts', 'zbs-hide-wp-menus', 'zbs_customer_invoice_meta', 'zbs_inv_sendattachments', 'zbs_customer_invoices', 'zbs-hopscotch-tour', 'last_login');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'metaboxhidden_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'metaboxhidden_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'metaboxhidden_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'metaboxhidden_%';

