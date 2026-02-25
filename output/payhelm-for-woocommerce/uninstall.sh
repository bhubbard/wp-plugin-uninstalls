#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paywoo_private_key'
wp option delete 'has_visited_channels'
wp option delete 'ck'
wp option delete 'cs'

