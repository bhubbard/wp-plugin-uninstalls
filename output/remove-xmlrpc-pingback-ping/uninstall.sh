#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rxpp_blocked_methods_count'
wp option delete 'blocked_pingback_ping'

