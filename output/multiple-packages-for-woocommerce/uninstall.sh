#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'multi_packages_type'
wp option delete 'multi_packages_enabled'
wp option delete 'multi_packages_free_shipping'

