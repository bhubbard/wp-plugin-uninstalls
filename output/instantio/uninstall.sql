-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wiopt', 'tf_display_admin_notice_time', 'ins_review_notice_status', 'ins_installation_date', 'wiopt_update_option', 'woocommerce_db_version', 'instantio_active_time', 'woocommerce_cart_redirect_after_add', 'ins_promo__schudle_start_from', 'ins_promo__schudle_option', 'tf_promo_notice_exists', 'tf_promo_notice_woo_exists', 'tf_promo_widget_exists', 'ins_dashboard_widget_dismissed', 'ins_dismiss_admin_notice', 'ins_dismiss_post_woo_notice', 'tf_setup_wizard');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ins_cus_billingfield_origin12', 'ins_cus_billingfield_origin13', 'ins_cus_billingfield_origin14', 'ins_cus_billingfield_origin15', 'ins_cus_billingfield_origin16', 'ins_cus_shipingfield_origin10', 'ins_cus_shipingfield_origin11', 'ins_cus_shipingfield_origin12', 'ins_cus_shipingfield_origin13', 'ins_cus_shipingfield_origin14');
DELETE FROM wp_usermeta WHERE meta_key IN ('ins_cus_billingfield_origin12', 'ins_cus_billingfield_origin13', 'ins_cus_billingfield_origin14', 'ins_cus_billingfield_origin15', 'ins_cus_billingfield_origin16', 'ins_cus_shipingfield_origin10', 'ins_cus_shipingfield_origin11', 'ins_cus_shipingfield_origin12', 'ins_cus_shipingfield_origin13', 'ins_cus_shipingfield_origin14');
DELETE FROM wp_termmeta WHERE meta_key IN ('ins_cus_billingfield_origin12', 'ins_cus_billingfield_origin13', 'ins_cus_billingfield_origin14', 'ins_cus_billingfield_origin15', 'ins_cus_billingfield_origin16', 'ins_cus_shipingfield_origin10', 'ins_cus_shipingfield_origin11', 'ins_cus_shipingfield_origin12', 'ins_cus_shipingfield_origin13', 'ins_cus_shipingfield_origin14');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ins_cus_billingfield_origin12', 'ins_cus_billingfield_origin13', 'ins_cus_billingfield_origin14', 'ins_cus_billingfield_origin15', 'ins_cus_billingfield_origin16', 'ins_cus_shipingfield_origin10', 'ins_cus_shipingfield_origin11', 'ins_cus_shipingfield_origin12', 'ins_cus_shipingfield_origin13', 'ins_cus_shipingfield_origin14');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ins_fomo_first_visit_time_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ins_fomo_first_visit_time_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ins_fomo_first_visit_time_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ins_fomo_first_visit_time_%';

