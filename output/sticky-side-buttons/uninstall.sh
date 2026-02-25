#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ssb_settings'
wp option delete 'ssb_buttons'
wp option delete 'ssb_showoncpt'
wp option delete 'ssb_icons_migrated'

