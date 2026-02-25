#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mp_settings'
wp option delete 'woocommerce_check_page_id'
wp option delete 'paymill_webhook_id'
wp option delete 'paymill_db_version'

