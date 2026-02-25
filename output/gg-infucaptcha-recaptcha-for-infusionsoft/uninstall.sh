#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'google_site_key'
wp option delete 'google_site_secret'
wp option delete 'google_lang'
wp option delete 'google_theme'
wp option delete 'custom_error_message'

