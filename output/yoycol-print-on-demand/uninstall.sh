#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yoycol_domain'
wp option delete 'yoycol_salt'
wp option delete 'yoycol_access_key'
wp option delete 'yoycol_access_token'
wp option delete 'yoycol_store_id'

