#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wiopt'
wp option delete 'tf_display_admin_notice_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'ins_review_notice_status'
wp option delete 'ins_installation_date'
wp option delete 'wiopt_update_option'
wp option delete 'woocommerce_db_version'
wp option delete 'instantio_active_time'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'ins_promo__schudle_start_from'
wp option delete 'ins_promo__schudle_option'
wp option delete 'tf_promo_notice_exists'
wp option delete 'tf_promo_notice_woo_exists'
wp option delete 'tf_promo_widget_exists'
wp option delete 'ins_dashboard_widget_dismissed'
wp option delete 'ins_dismiss_admin_notice'
wp option delete 'ins_dismiss_post_woo_notice'
wp option delete 'tf_setup_wizard'

# Clear Cron Jobs
wp cron event delete 'ins_promo__schudle'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_billingfield_origin12'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_billingfield_origin12'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_billingfield_origin12'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_billingfield_origin12'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_billingfield_origin13'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_billingfield_origin13'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_billingfield_origin13'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_billingfield_origin13'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_billingfield_origin14'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_billingfield_origin14'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_billingfield_origin14'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_billingfield_origin14'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_billingfield_origin15'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_billingfield_origin15'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_billingfield_origin15'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_billingfield_origin15'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_billingfield_origin16'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_billingfield_origin16'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_billingfield_origin16'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_billingfield_origin16'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_shipingfield_origin10'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_shipingfield_origin10'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_shipingfield_origin10'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_shipingfield_origin10'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_shipingfield_origin11'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_shipingfield_origin11'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_shipingfield_origin11'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_shipingfield_origin11'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_shipingfield_origin12'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_shipingfield_origin12'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_shipingfield_origin12'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_shipingfield_origin12'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_shipingfield_origin13'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_shipingfield_origin13'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_shipingfield_origin13'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_shipingfield_origin13'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ins_cus_shipingfield_origin14'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ins_cus_shipingfield_origin14'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ins_cus_shipingfield_origin14'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ins_cus_shipingfield_origin14'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'ins_fomo_first_visit_time_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'ins_fomo_first_visit_time_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'ins_fomo_first_visit_time_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ins_fomo_first_visit_time_%'"
