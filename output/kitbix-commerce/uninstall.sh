#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kitbix_commerce_settings'
wp option delete 'kitbix_commerce_pages'
wp option delete 'kitbix_commerce_currency'

