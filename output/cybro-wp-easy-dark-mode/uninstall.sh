#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdm_dark_mode_dashboard'
wp option delete 'cdm_start_time'
wp option delete 'cdm_end_time'

