#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smntcs_admin_maintenance_enable'
wp option delete 'smntcs_admin_maintenance_uid'

