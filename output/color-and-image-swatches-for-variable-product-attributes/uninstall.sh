#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recently_activated'
wp option delete 'enable_plugin'
wp option delete 'color_swatches_setting_values'
wp option delete 'attr_image_size'
wp option delete 'woocommerce_cart_redirect_after_add'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phoe_swatch_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phoe_swatch_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phoe_swatch_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phoe_swatch_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attribute_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attribute_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attribute_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attribute_position'"
