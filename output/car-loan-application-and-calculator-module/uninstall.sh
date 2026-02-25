#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clm_vehicles'
wp option delete 'clm_provinces'
wp option delete 'clm_emails'
wp option delete 'clm_clean_db'
wp option delete 'clm_version'

