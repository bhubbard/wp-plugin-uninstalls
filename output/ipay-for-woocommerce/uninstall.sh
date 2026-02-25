#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'is_ipg_mode_enabled'
wp option delete 'ipay_gw_sec'
wp option delete 'ipay_global_gw_wc_api_string'

