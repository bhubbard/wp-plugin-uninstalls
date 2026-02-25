#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'timezone'
wp option delete 'ip'
wp option delete 'proxy'
wp option delete 'curl_module'
wp option delete 'first'
wp option delete 'msg'
wp option delete 'redirect'
wp option delete 'tor'
wp option delete 'ua'
wp option delete 'log'
wp option delete 'ownserverip'
wp option delete 'curl_extension'

