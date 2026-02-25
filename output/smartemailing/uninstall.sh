#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'smartemailing_settings_version'
wp option delete 'smartemailing-username'
wp option delete 'smartemailing-password'
wp option delete 'woocommerce_weight_unit'

