#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sigma_ssr_replace_info'
wp option delete 'sigma_ssr_search_info'
wp option delete 'sigma_ssr_plugin_should_stop_search'
wp option delete 'sigma_ssr_plugin_settings'

