#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wava_active_flag'
wp option delete 'wava_merchant_key_site'
wp option delete 'wava_plugin_version'

