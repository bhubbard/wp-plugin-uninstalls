#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_labels'
wp option delete 'current_site_label'
wp option delete 'is_monthly'
wp option delete 'plugin_key'
wp option delete 'salpha_valid'

