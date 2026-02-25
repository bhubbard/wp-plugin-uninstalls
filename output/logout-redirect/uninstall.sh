#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'logout_redirect_type'
wp option delete 'logout_redirect_customise_url'

