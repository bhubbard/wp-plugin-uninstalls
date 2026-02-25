#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvt_visitors_tracker'
wp option delete 'visitor_tracker_installed'
wp option delete 'visitor_tracker_version'

