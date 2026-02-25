#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foodtrucklocator_db_version'
wp option delete 'foodtrucklocator_settings'

