#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themexpo_installed'
wp option delete 'themexpo_version'
wp option delete 'tx_setting_option_name'

