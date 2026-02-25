#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_otd_enable'
wp option delete '_otd_display_location'
wp option delete '_otd_tips_title'
wp option delete '_otd_taxable'

