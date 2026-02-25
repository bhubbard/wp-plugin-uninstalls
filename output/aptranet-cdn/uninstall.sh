#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aptranet_cdn_distribution'
wp option delete 'aptranet_cdn_distribution_name'
wp option delete 'aptranet_cdn_access_key'
wp option delete 'aptranet_cdn_secret'
wp option delete 'aptranet_cdn_enable'
wp option delete 'aptranet_cdn_base_url'

