#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf_title'
wp option delete 'cf_app_id'
wp option delete 'cf_secret_key'
wp option delete 'cf_payment_mode'
wp option delete 'cf_success_message'

