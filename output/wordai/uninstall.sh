#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sftcy-wordai-content-settings-data'
wp option delete 'sftcy-wordai-apisettings-data'
wp option delete 'sftcy-wordai-image-settings-data'

