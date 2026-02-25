#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'reCaptchaProtectedDownloads_settings'
wp option delete 'active_sitewide_plugins'

