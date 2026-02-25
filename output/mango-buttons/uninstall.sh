#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mb_subscribed'
wp option delete 'mb_email'
wp option delete 'mb_icon_color'
wp option delete 'mb_extended_language_support'
wp option delete 'MB_VERSION'

