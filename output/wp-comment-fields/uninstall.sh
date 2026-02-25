#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcomment_settings'
wp option delete 'wpcomment_meta_fields'
wp option delete 'wpcomment_meta'
wp option delete 'wpcomment_css_output'
wp option delete 'woocommerce_tax_display_shop'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcomment_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcomment_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcomment_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcomment_fields'"
