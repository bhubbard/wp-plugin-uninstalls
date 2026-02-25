#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'flexqr_db_version'
wp option delete 'flexqr_settings'
wp option delete 'flexqr_license_key'

