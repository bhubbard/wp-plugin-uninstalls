#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdpraccept_db_version'
wp option delete 'gdpraccept'

