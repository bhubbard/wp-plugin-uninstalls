#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsea_func_generator_enabled'
wp option delete 'wpsea_func_feed_links_enabled'
wp option delete 'wpsea_func_wlwmanifest_enabled'
wp option delete 'wpsea_func_rsd_enabled'
wp option delete 'wpsea_func_analytics_enabled'
wp option delete 'wpsea_func_analytics_id'
wp option delete 'wpsea_func_noframes_enabled'
wp option delete 'wpsea_func_setting_jquery_enabled'
wp option delete 'wpsea_func_contact_sendto'
wp option delete 'wpsea_func_load_jquery_enabled'

