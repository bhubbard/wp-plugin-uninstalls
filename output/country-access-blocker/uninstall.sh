#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cab_enable_ip_check'
wp option delete 'cab_blocked_countries'

