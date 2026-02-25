#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aft_db_version'
wp option delete 'aft_themes_array'
wp option delete 'aft_options_array'
wp option delete 'aft_options_by_array'

