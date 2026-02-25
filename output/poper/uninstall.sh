#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'poper-cache-notice'
wp option delete 'poper-dismiss-notice'
wp option delete 'poper_account_id'
wp option delete 'poper_account_id_verified'
wp option delete 'poper_account_id_md5'

# Delete Transients
wp transient delete 'poper_dismiss_notice_temporary'

