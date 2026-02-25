#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spawning_block_ccbot'
wp option delete 'spawning_block_gptbot'
wp option delete 'block_ccbot'
wp option delete 'block_gptbot'

