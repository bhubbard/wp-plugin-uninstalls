#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ztb_source'
wp option delete 'ztb_id'
wp option delete 'ztb_domainid'
wp option delete 'ztb_email'
wp option delete 'access_key'
wp option delete 'ztb_access_key'
wp option delete 'ztb_status_message'
wp option delete 'ztb_status_disconnect'
wp option delete 'ztb_token_key'

