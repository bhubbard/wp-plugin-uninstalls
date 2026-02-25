#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pagecdn'
wp option delete 'pagecdn-cache'
wp option delete 'pagecdn-image-cache'
wp option delete 'pagecdn-webp-cache'

