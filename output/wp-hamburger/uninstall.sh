#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpha-configuration'
wp option delete 'wpha_options'
wp option delete 'wpha-customization'

