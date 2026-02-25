#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gf_vandar_configured'
wp option delete 'gf_vandar_version'
wp option delete 'gf_vandar_settings'
wp option delete 'recently_activated'

