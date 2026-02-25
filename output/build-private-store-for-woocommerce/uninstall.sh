#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wg_combo_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wg_cats_select2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bpsfw_tags_select2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wg_pags_select2_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bpsfw_redirect_url_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bpsfw_prod_redirect_url_%'"
wp option delete 'bpsfw_form_bg_image'
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%sslpfwerror' OR option_name LIKE '_site_transient_%sslpfwerror'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'approval_confirmation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'approval_confirmation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'approval_confirmation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'approval_confirmation'"
