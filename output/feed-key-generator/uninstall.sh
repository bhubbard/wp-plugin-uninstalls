#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfkg_feed_key_status'
wp option delete 'feed_key'
wp option delete 'feed_key_status'
wp option delete 'wpfkg_feed_key'

