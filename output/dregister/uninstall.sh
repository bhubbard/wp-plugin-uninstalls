#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dr_fields'
wp option delete 'dr_force_first_name'
wp option delete 'dr_force_last_name'

