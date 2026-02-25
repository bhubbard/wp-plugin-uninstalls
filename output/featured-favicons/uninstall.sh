#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ff_use_as_default_image'
wp option delete 'ff_default_favicon_id'
wp option delete 'ff_favicon_as_apple_touch_icon'

