#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wis_scrapper_pack_passcount'
wp option delete 'wis_scrapper_add1_passcount'
wp option delete 'wis_scrapper_add1_clicked'
wp option delete 'wis_scrapper_options'
wp option delete 'wis_backup_version_plugin'
wp option delete 'wis_backup_package_active'
wp option delete 'wis_backup_settings'

