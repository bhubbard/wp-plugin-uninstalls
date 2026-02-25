#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pidex_settings'
wp option delete 'pidex_installed'
wp option delete 'pidex_version'

