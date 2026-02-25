#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptb_text_transferencia_price_html'
wp option delete 'at_text_transferencia_price_html'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'transferencia_price_field_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'transferencia_price_field_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'transferencia_price_field_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'transferencia_price_field_at'"
