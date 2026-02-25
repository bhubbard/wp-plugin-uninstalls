#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'max_bricks_elements'
wp option delete 'mab_elements_settings'
wp option delete 'mab_override_ms'
wp option delete 'mab_multisite_settings_migrated'

