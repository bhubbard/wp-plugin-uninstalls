#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_cron_plugin'
wp option delete 'tools_page_cron_table_per_page'
wp option delete 'simple_cron_installed'

# Delete Transients
wp transient delete 'simple_security_nag'
wp transient delete 'simple_cron_nag'

