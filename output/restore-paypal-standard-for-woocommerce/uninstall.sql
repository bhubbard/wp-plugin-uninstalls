-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rpsfw_migration_completed', 'rpsfw_migration_notice_dismissed_permanently', 'rpsfw_migration_notice_dismissed_until', 'woocommerce_paypal_settings', 'woocommerce_restore_paypal_standard_settings', 'rpsfw_migration_notice_count', 'rpsfw_migration_success', 'rpsfw_show_migration_notice', 'rpsfw_activation_notice');

