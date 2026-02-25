#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'action_scheduler_lock_async-request-runner'
wp option delete 'orders_sync_to_airtable_for_woocommerce_exporter_state'
wp option delete 'orders_sync_to_airtable_for_woocommerce_exporter_settings'
wp option delete 'orders_sync_to_airtable_for_woocommerce_check_chars'

# Delete Transients
wp transient delete 'orders_sync_to_airtable_for_woocommerce_current_template_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_orders_sync_to_airtable_for_woocommerce_site_health_check_%' OR option_name LIKE '_site_transient_orders_sync_to_airtable_for_woocommerce_site_health_check_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

