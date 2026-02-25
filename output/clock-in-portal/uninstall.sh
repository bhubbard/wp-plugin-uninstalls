#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cip_settings'
wp option delete 'wl_cip_setup_wizard'
wp option delete 'cip_staff_request'
wp option delete 'cip_official_holidays'
wp option delete 'cip_staff_event_request'

