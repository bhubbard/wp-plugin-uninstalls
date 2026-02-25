#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fareharbor_version'
wp option delete 'fareharbor_settings'
wp option delete 'fareharbor_kit_version'

