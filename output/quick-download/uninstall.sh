#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quick_download_installed'
wp option delete 'quick_download_version'

