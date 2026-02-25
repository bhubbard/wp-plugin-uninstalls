#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'golfhs_settings'
wp option delete 'golfhs_db_version'
wp option delete 'golfhs_version'
wp option delete 'golf_handicap_slope_settings'

