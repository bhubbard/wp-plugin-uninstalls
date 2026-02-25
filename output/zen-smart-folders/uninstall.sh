#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zensf_activity_log'
wp option delete 'zensf_options'
wp option delete 'zensf_remove_data_on_uninstall'
wp option delete 'zensf_version'
wp option delete 'zensf_installed_on'

