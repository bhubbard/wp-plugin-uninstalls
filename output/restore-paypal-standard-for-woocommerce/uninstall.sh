#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rpsfw_migration_completed'
wp option delete 'rpsfw_migration_notice_dismissed_permanently'
wp option delete 'rpsfw_migration_notice_dismissed_until'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'woocommerce_restore_paypal_standard_settings'
wp option delete 'rpsfw_migration_notice_count'

# Delete Transients
wp transient delete 'rpsfw_migration_success'
wp transient delete 'rpsfw_show_migration_notice'
wp transient delete 'rpsfw_activation_notice'

