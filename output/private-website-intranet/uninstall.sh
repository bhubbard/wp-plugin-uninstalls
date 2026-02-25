#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'private-website-intranet-redirect-after-login'
wp option delete 'private-website-intranet-login-page'
wp option delete 'private-website-intranet-use-shortcode'
wp option delete 'private-website-intranet-redirect-after-login-page'

