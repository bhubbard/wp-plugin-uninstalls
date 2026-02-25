#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gumlet_settings'
wp option delete 'gumlet_width_from_img'
wp option delete 'gumlet_width_from_flex'
wp option delete 'gumlet_min_width'

