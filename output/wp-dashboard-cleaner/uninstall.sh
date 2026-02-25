#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpdc_saved_values'
wp option delete '_wpdc_other_saved_values'
wp option delete 'wpdc_activated_on'
wp option delete 'wpdc_deactivated_on'

