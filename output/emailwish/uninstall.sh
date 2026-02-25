#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emailwish_secret'
wp option delete 'emailwish_customer_id'
wp option delete 'emailwish_installed'

