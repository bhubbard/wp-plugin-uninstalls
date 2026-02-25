#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcsdt_handling_time'
wp option delete 'wcsdt_transit_time'
wp option delete 'wcsdt_show_handling_times'
wp option delete 'wcsdt_show_transit_times'

