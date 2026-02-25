#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'kirki_googlefonts_cache'
wp transient delete 'kirki_googlefont_names_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kirki_fa_nag_dismissed'"
