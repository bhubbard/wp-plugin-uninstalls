#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ha-slug'
wp option delete 'ha-campaign'
wp option delete 'ha-error'
wp option delete 'ha-sync'
wp option delete 'ha-name'

