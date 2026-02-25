#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fireworks_active'
wp option delete 'fireworks_type'
wp option delete 'fireworks_colors'
wp option delete 'fireworks_gifs'

