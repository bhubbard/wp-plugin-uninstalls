#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dt_cpanel_key'
wp option delete 'dt_cpanel_settings'
wp option delete 'dt_cpanel_domains'
wp option delete 'cpanel_key'
wp option delete 'cpanel_settings'
wp option delete 'cpanel_domains'

