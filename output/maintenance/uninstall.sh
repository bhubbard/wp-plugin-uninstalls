#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'maintenance_meta'
wp option delete 'maintenance_options'
wp option delete 'mtnc_db_version'

