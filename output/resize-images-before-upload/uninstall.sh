#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rbu_cancel_force_flash'
wp option delete 'rbu_resize_quality'
wp option delete 'rbu_resize_height'
wp option delete 'rbu_resize_width'

