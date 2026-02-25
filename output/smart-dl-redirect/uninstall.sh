#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartdlre_timer_seconds'
wp option delete 'smartdlre_ad_code'
wp option delete 'smartdlre_redirect_slug'

