#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'istempmail_token'
wp option delete 'istempmail_blocked_list'
wp option delete 'istempmail_whitelist'
wp option delete 'istempmail_blacklist'
wp option delete 'istempmail_check'
wp option delete 'istempmail_check_scope'
wp option delete 'istempmail_ignored_uris'
wp option delete 'istempmail_ignored_payload'

