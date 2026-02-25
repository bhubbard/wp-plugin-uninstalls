#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccsm_settings'
wp option delete 'ccsm_ga_notice'

# Delete Transients
wp transient delete 'ccsm_review'

