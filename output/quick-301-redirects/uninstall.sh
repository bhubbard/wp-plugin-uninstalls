#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quick_301_redirects_'
wp option delete 'redirection_301'
wp option delete 'quick_301_redirects_plugins_page'

