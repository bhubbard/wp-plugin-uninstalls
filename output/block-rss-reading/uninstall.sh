#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom_rss_url'
wp option delete 'blocked_ip_list'
wp option delete 'block_rss_reading'

