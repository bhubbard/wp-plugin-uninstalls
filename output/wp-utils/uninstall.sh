#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'utils_disable_rsd_checkbox'
wp option delete 'utils_remove_wp_ver_checkbox'
wp option delete 'utils_remove_wlwmanifest_checkbox'
wp option delete 'utils_remove_shortlink_checkbox'
wp option delete 'utils_disable_api_checkbox'
wp option delete 'utils_remove_discore_links_checkbox'

