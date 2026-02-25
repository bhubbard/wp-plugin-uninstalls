#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pur_private_links'
wp option delete 'updated_htaccess_success'
wp option delete 'jal_db_version'
wp option delete 'FREE_NOTIFICATION_SETTINGS'

