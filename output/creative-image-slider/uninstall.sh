#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcis_settings'
wp option delete 'wpcis_db_version'

