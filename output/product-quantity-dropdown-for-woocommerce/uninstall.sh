#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quantity_product_rule'
wp option delete 'pqdfw_select2'
wp option delete 'pqdfw_cats_select2'
wp option delete 'pqdfw_tags_select2'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%pqdfwerror' OR option_name LIKE '_site_transient_%pqdfwerror'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqdfw_pro_min_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqdfw_pro_min_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqdfw_pro_min_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqdfw_pro_min_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqdfw_pro_max_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqdfw_pro_max_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqdfw_pro_max_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqdfw_pro_max_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pqdfw_pro_step_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pqdfw_pro_step_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pqdfw_pro_step_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pqdfw_pro_step_quantity'"
