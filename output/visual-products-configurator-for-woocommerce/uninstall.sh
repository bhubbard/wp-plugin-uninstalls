#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vpc-options'
wp option delete 'vpc_do_activation_redirect'
wp option delete 'woocommerce_currency_pos'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-license-key'"
wp option delete 'woocommerce_tax_display_shop'

# Delete Transients
wp transient delete 'vpc-checking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'vpc-config'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'vpc-config'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'vpc-config'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'vpc-config'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
