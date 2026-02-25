#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cloudguard_options'
wp option delete 'cloudguard_blocked_attempts'
wp option delete 'cloudguard_nag'

