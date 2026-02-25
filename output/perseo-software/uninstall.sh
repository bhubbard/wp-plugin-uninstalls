#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pluginperseo_configuracion'
wp option delete 'pluginperseo_parametros'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_wc_product_gallery_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wc_product_gallery_%' OR option_name LIKE '_site_transient_wc_product_gallery_%'"

# Clear Cron Jobs
wp cron event delete 'intervalo_perseo'
wp cron event delete 'perseo_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PerseoIdentificacion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PerseoIdentificacion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PerseoIdentificacion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PerseoIdentificacion'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PerseoCodigo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PerseoCodigo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PerseoCodigo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PerseoCodigo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'PerseoID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'PerseoID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'PerseoID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'PerseoID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
