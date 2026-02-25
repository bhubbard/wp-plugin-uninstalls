#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'at_block_count'
wp option delete 'at_block'
wp option delete 'at_message'

