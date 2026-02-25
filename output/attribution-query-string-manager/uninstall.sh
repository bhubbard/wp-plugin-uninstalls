#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aqsm-cookie-life'
wp option delete 'aqsm-allowableFields'
wp option delete 'aqsm-targetURLs'

