#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grappin_project_id'
wp option delete 'grappin_identify_users'
wp option delete 'grappin_version'

