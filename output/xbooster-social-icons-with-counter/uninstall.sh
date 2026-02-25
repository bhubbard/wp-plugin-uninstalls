#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xbooster_social_plugin_snps'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xbooster_social_plugin_snp_counter_%'"
wp option delete 'xbooster_social_plugin_share_ns'
wp option delete 'xbooster_display_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xbooster_social_plugin_sns_counter_%'"

