#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'specfit_platinum_access_key'
wp option delete 'specfit_platinum_access_email'
wp option delete 'specfit_default_3d_params'
wp option delete 'specfit_settings_texts'
wp option delete 'specfit_header_logo_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'try_on_image_specfit_platinum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'try_on_image_specfit_platinum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'try_on_image_specfit_platinum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'try_on_image_specfit_platinum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'specfit_product_try_on_color_keys'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'specfit_product_try_on_color_keys'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'specfit_product_try_on_color_keys'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'specfit_product_try_on_color_keys'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'specfit_product_try_on_color_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'specfit_product_try_on_color_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'specfit_product_try_on_color_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'specfit_product_try_on_color_%'"
