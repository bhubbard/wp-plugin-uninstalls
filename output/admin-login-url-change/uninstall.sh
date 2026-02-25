#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jh_new_login_url'
wp option delete 'aluc_need_flush'
wp option delete 'aluc_runtime_slug'
wp option delete 'aluc_runtime_slug_flush'

