#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'supercharts_db_version'
wp option delete 'supercharts_license_status'
wp option delete 'supercharts_license_key'

