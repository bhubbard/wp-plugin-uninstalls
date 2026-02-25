#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safelayout_buttons_options_rate'
wp option delete 'safelayout_buttons_options_upgrade'
wp option delete 'safelayout_icons_packs'

