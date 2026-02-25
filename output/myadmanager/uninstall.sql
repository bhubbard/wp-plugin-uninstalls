-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('myadmanager_paypal_add', 'myadmanager_cost_week', 'myadmanager_name_week', 'myadmanager_cost_month', 'myadmanager_name_month', 'myadmanager_paypal_return_page', 'myadmanager_paypal_email_msg', 'myAdManager_db_version', 'myadmanager_week_enable', 'myadmanager_widget_title', 'myAdManager_version', 'myadmanager_paypal_enable');

