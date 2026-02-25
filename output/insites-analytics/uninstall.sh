#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uuid'
wp option delete 'logged_in'
wp option delete 'admin_logged_in'

