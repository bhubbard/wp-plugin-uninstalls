#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'kirki_downloaded_font_files'

# Delete Transients
wp transient delete 'kirki_remote_url_contents'
wp transient delete 'kirki_googlefonts_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
