#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_wpho_saved_values'
wp option delete 'wpho_activated_on'
wp option delete 'wpho_deactivated_on'

