#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_groups_civicrm_sync_settings'
wp option delete 'bp_groups_civicrm_sync_version'

