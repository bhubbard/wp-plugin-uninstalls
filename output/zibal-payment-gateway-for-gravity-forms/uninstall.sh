#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_zibal_configured'
wp option delete 'gf_zibal_version'
wp option delete 'gf_zibal_settings'
wp option delete 'recently_activated'

