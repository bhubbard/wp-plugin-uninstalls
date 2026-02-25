#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nxsg_flush_needed'
wp option delete 'nxsg_last_ping_time'

