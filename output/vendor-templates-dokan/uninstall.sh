#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vendor_templates_options'
wp option delete 'vendor_template_options'
wp option delete 'hide_cart_option'
wp option delete 'vtfd_remove_split_shipping'
wp option delete 'vtfd_templates_enabled'

# Delete Transients
wp transient delete 'vendor_templates_settings_redirect'

