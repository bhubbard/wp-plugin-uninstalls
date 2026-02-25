#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popcash_net_uid'
wp option delete 'popcash_net_api_key'
wp option delete 'popcash_net_wid'
wp option delete 'popcash_net_fallback'
wp option delete 'popcash_net_textarea'
wp option delete 'popcash_net_integration'
wp option delete 'popcash_net_disabled'
wp option delete 'popcash_net_fcap'

