#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmapblock_ablocks_install_notice_hidden'
wp option delete 'kodezen_black_friday_notice'
wp option delete 'wp_map_block_first_install_time'
wp option delete 'insightsforwp_sent_data'
wp option delete 'wp_map_block_version'

