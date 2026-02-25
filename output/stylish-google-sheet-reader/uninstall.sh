#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbox_sgsr_trial_started'
wp option delete 'wpbox_sgsr_license_type'
wp option delete 'wpbox_sgsr_trial_status'

