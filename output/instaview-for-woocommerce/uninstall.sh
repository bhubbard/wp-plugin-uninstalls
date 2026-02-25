#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'instaview_enable'
wp option delete 'instaview_enableformobile'
wp option delete 'instaview_buttontype'

