#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gtpm_options'
wp option delete 'gtpm_version'
wp option delete 'gtpm_old_version'
wp option delete 'GTPM_DOING_UPDATE'

