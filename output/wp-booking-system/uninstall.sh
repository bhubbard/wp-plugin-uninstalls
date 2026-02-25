#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbs_settings'
wp option delete 'wpbs_hide_v2_welcome_screen'
wp option delete 'wpbs_db_version'
wp option delete 'wpbs_version'
wp option delete 'wpbs_first_activation'
wp option delete 'wpbs_upgrade_5_0_0'
wp option delete 'wpbs_upgrade_5_0_0_skipped'
wp option delete 'wpbs_serial_key'
wp option delete 'wpbs_registered_website_id'
wp option delete 'wpbs-options'
wp option delete 'wpbs-languages'

# Delete Transients
wp transient delete 'wpbs_subscription_type'
wp transient delete 'wpbs_serial_status'
wp transient delete 'wpbs_upgrader_legend_items_relationships'

