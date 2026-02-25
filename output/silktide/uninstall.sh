#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'silktide_version'
wp option delete 'silktide_api_key'
wp option delete 'silktide_last_notified'

