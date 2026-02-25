#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'uwplt_ga'
wp option delete 'uwplt_gtag'
wp option delete 'uwplt_custom_event_name'

