#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'wpmuclone_copy_users'

