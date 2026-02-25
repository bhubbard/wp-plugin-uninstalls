#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7_ga_send_actions'
wp option delete 'wpcf7'
wp option delete 'cf7-ga-180-notice-dismissed'
wp option delete 'cf7-ga-186-notice-dismissed'

# Delete Transients
wp transient delete 'cf7_ga_form_ids'

