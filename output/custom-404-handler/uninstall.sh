#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cust4ha_page_id'
wp option delete 'cust4ha_logging_enabled'
wp option delete 'cust4ha_max_logs'
wp option delete 'cust4ha_redirect_to_home'
wp option delete 'cust4ha_noindex'

