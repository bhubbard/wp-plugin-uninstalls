#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mfbfw-rate-time'
wp option delete 'mfbfw'
wp option delete 'mfbfw_active_version'

