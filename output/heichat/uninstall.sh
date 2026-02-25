#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'heichat_login'
wp option delete 'heichat_js_url'
wp option delete 'heichat_integrate'

