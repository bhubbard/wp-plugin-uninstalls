#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_systempay_db_version'
wp option delete 'WS_main_page'
wp option delete 'wp_systempay_installed'

