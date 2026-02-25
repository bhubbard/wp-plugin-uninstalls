#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'imop_setting_data'
wp option delete 'cwpd_setting_data'
wp option delete 'imop_wp_optimize'

