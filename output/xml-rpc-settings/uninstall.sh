#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'allow_disallow_get_access'
wp option delete 'allow_disallow_multicall'
wp option delete 'allow_disallow_listmethods'
wp option delete 'allow_disallow_auth'
wp option delete 'allow_disallow_pingbacks'
wp option delete 'allow_disallow_header'
wp option delete 'allow_disallow_verify_agent'
wp option delete 'allow_disallow_send_agent'
wp option delete 'allow_disallow_demo'
wp option delete 'allow_disallow_blogger'
wp option delete 'allow_disallow_metaweblog'
wp option delete 'allow_disallow_movabletype'
wp option delete 'allowed_ip'
wp option delete 'methods_message'

