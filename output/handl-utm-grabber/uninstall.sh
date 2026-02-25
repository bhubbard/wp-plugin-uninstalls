#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hug_zapier_url'
wp option delete 'hug_zapier_log'
wp option delete 'hug_httponly_cookies'
wp option delete 'hug_append_all'
wp option delete 'check_v2717_doc'

