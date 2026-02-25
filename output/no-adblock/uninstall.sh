#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'noadblock-title'
wp option delete 'noadblock-description'
wp option delete 'noadblock-status'
wp option delete 'noadblock-agree'
wp option delete 'noadblock-disagree'
wp option delete 'noadblock-url'

