#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'egawp_activated_on'
wp option delete 'egawp_select_type'
wp option delete 'egawp_value'
wp option delete 'egawp_deactivated_on'

