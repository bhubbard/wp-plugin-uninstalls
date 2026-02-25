#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quaderno_dismiss_review'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quaderno_tax_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quaderno_tax_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quaderno_tax_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quaderno_tax_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ebook'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ebook'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ebook'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ebook'"
