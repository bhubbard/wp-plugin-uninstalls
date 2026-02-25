#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onlist_status'
wp option delete 'cbns_filepath'
wp option delete 'cbns_filecopy'
wp option delete 'cbsn_email'
wp option delete 'cbsn_secret_key'
wp option delete 'cbsn_onlist'

