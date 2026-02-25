#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hwcf_version_1_0_0_installed'
wp option delete 'hwcf_notice_dismiss'
wp option delete 'hwcf_migrated_1_2_16'
wp option delete 'hwcf_settings_data'
wp option delete 'hwcf_disable_purchases'
wp option delete 'hwcf_delete_on_deactivation'
wp option delete 'hwcf_cripple_bots'
wp option delete 'hwcf_settings_ids_increament'

