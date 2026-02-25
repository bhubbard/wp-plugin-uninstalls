#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'channelize'
wp option delete 'channelize_migration'
wp option delete 'channelize_userrole'

