#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'estatik_calculator_settings'
wp option delete 'estatik_calculator_settings_migrated'
wp option delete 'emc_options'

