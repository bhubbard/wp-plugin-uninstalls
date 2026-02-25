#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gfcnp_plugin'
wp option delete 'pmpro_gateway'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pmpro_clickandpledge_level_sku_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pmpro_clickandpledge_level_gau_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pmpro_clickandpledge_connect_campaign_%'"
wp option delete 'pmpro_clickandpledge_connect_campaign'
wp option delete 'pmpro_clickandpledge_connect_campaign_subscription'
wp option delete 'pmpro_clickandpledge_connect_campaign_trial'

# Clear Cron Jobs
wp cron event delete 'pmpro_cron_example_subscription_updates'

