#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bp_activity_bump_denied_activity_types'
wp option delete 'bp_activity_bump_denied_user_types'

