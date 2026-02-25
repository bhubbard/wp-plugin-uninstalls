#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'winkEnvironment'
wp option delete 'winkcontentTime'
wp option delete 'winkData'
wp option delete 'winkcontentBearer'
wp option delete 'winkdataTime'
wp option delete 'winkClientId'

