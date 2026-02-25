#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agile_cdn_url'
wp option delete 'agile_cdn_prefix'
wp option delete 'agile_cdn_enabled'

