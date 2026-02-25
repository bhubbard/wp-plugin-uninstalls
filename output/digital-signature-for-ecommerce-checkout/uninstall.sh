#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'signature_checkout_position'
wp option delete 'signature_order_page_position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_signature_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_signature_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_signature_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_signature_attachment_id'"
