#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'um_options'
wp option delete 'um_jobboardwp_version'
wp option delete 'um_jobboardwp_last_version_upgrade'

