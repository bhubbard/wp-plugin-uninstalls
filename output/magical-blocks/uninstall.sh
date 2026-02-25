#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magical_blocks_version'
wp option delete 'magical_blocks_has_pro'
wp option delete 'magical_blocks_settings'

