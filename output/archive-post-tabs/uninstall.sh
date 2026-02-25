#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'archivesposttab_license_status'
wp option delete 'archivesposttab_license_key'
wp option delete 'archivesposttab_license_reff'

