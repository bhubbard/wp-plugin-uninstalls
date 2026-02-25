#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affwp_version'
wp option delete 'affwp_aat_version'
wp option delete 'affwp_aat_version_upgraded_from'
wp option delete 'affwp_settings'

