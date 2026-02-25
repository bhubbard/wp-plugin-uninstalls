#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hkdev_maintenance_mode_version'
wp option delete 'hkdev_mm'

