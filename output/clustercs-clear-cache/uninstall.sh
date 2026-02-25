#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cache_url'
wp option delete 'clear_error'
wp option delete 'check_option'

