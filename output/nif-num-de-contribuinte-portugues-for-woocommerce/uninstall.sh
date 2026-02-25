#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'webdados_invoicexpress_nag'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'webdados_invoicexpress_nag_dismissed_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'webdados_invoicexpress_nag_dismissed_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'webdados_invoicexpress_nag_dismissed_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'webdados_invoicexpress_nag_dismissed_until'"
