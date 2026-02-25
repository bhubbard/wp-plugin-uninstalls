#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ts_301_redirection'
wp option delete '301_redirects_404_log'

