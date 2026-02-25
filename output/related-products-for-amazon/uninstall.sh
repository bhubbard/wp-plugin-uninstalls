#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aasrp_admin_init'
wp option delete 'aasrp_admin_actions'
wp option delete 'aasrp_tracking_id'

