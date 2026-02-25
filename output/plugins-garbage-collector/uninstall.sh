#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgc_options'
wp option delete 'pgc_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'pgc_scanprogress_current'
wp option delete 'pgc_scanprogress_status'

