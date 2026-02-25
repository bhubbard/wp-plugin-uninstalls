#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uptimezone_is_installation_completed'
wp option delete 'uptimezone-code'

