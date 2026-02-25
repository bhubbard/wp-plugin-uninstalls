#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'frames_options'
wp option delete 'frames_vg_version'
wp option delete 'frames_db_changes'
wp option delete 'frames_ew_logs'
wp option delete 'frames_vg_pro'

