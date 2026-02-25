#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tinysolutions_pqe_settings'
wp option delete 'tinysolutions_pqe_plugin_version'
wp option delete 'tinysolutions_pqe_plugin_activation_time'

