#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcmmq_recommsss'
wp option delete 'wcmmq_license_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice_close_date'"
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'wcmmq_s_universal_minmaxstep'
wp option delete 'wcmmq_universal_minmaxstep'

# Delete Transients
wp transient delete 'codersaiful_browse_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_right_now' OR option_name LIKE '_site_transient_%_right_now'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%min_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%min_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%min_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%min_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%default_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%default_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%default_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%default_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%max_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%max_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%max_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%max_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%product_step'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%product_step'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%product_step'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%product_step'"
