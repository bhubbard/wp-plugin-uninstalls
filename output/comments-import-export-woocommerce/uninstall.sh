#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmt_ex_im_option'
wp option delete 'wcie_wt_plugin_reviewed'
wp option delete 'wbte_sc_hidden_promotion_banners'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'hw_shipment_tracking_importer_ftp'
wp option delete 'wt_post_comment_alter_id'
wp option delete 'hw_prod_comment_csv_imp_exp_mapping'
wp option delete 'hw_prod_cmt_csv_imp_exp_mapping'

# Clear Cron Jobs
wp cron event delete 'hw_cmt_csv_im_ex_auto_export_products'
wp cron event delete 'hw_cmt_csv_im_ex_auto_import_products'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
