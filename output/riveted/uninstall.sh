#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'riveted_report_interval'
wp option delete 'riveted_idle_timeout'
wp option delete 'riveted_noninteraction'

