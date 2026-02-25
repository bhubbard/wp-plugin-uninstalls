#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpwt_settings'
wp option delete 'wpwt_schedule'
wp option delete 'wpwt_meetups'

