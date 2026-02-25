#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quotable_activation'
wp option delete 'wpseo_social'

# Delete Transients
wp transient delete 'quotable_updated'
wp transient delete 'quotable_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quotable_blockquote_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quotable_blockquote_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quotable_blockquote_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quotable_blockquote_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quotable_text_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quotable_text_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quotable_text_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quotable_text_disable'"
