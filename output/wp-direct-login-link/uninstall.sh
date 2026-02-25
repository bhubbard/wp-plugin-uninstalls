#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpmll_db_version'
wp option delete 'woocommerce_enable_checkout_login_reminder'

