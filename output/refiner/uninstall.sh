#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'refiner_project_id'
wp option delete 'refiner_identify_users'
wp option delete 'refiner_version'

