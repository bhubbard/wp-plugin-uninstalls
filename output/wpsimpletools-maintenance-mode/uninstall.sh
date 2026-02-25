#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pageTitle'
wp option delete 'pageText'
wp option delete 'enabled'
wp option delete 'maintenancePage'
wp option delete 'url'

