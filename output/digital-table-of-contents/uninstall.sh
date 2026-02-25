#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dtoc_compatibility'
wp option delete 'dtoc_dashboard_options'
wp option delete 'dtoc_dashboard'
wp option delete 'dtoc_incontent'
wp option delete 'dtoc_incontent_mobile'
wp option delete 'dtoc_incontent_tablet'
wp option delete 'dtoc_shortcode'
wp option delete 'dtoc_shortcode_mobile'
wp option delete 'dtoc_shortcode_tablet'
wp option delete 'dtoc_sliding_sticky'
wp option delete 'dtoc_sliding_sticky_mobile'
wp option delete 'dtoc_sliding_sticky_tablet'
wp option delete 'dtoc_floating'
wp option delete 'dtoc_floating_mobile'
wp option delete 'dtoc_floating_tablet'

# Delete Transients
wp transient delete 'dtoc_meta_type'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dtoc_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dtoc_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dtoc_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dtoc_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'saswp_custom_schema_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'saswp_custom_schema_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'saswp_custom_schema_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'saswp_custom_schema_field'"
