#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whl_page'
wp option delete 'whl_redirect_admin'
wp option delete 'whl_redirect'

