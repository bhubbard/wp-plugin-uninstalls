#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_store_vacation_onboarding'
wp option delete 'woo_store_vacation_rated'
wp option delete 'woo_store_vacation_activation_timestamp'
wp option delete 'woo_store_vacation_options'
wp option delete 'active_sitewide_plugins'

