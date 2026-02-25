-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cl_general_settings', 'cl_paddle_notice', 'enable_cl_smtp', 'cl_popup_settings', 'cl_recaptcha_settings', 'cl_db_version', 'cl_other_mailer', 'cl_twilio_settings', 'cart_lift_security_key', 'rex_cart_lift_version', 'rex_cart_lift_installed_time', 'woocommerce_email_footer_text', 'rex_cart_lift_activation_redirect', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'individual_use', 'free_shipping', 'product_ids', 'product_categories', 'exclude_product_ids', 'discount_type', 'coupon_amount', 'usage_limit', 'apply_before_tax', 'date_expires', '_price', 'cl_edd_session_id', 'cl_recovered_cart', 'cl_lp_session_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'individual_use', 'free_shipping', 'product_ids', 'product_categories', 'exclude_product_ids', 'discount_type', 'coupon_amount', 'usage_limit', 'apply_before_tax', 'date_expires', '_price', 'cl_edd_session_id', 'cl_recovered_cart', 'cl_lp_session_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'individual_use', 'free_shipping', 'product_ids', 'product_categories', 'exclude_product_ids', 'discount_type', 'coupon_amount', 'usage_limit', 'apply_before_tax', 'date_expires', '_price', 'cl_edd_session_id', 'cl_recovered_cart', 'cl_lp_session_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'individual_use', 'free_shipping', 'product_ids', 'product_categories', 'exclude_product_ids', 'discount_type', 'coupon_amount', 'usage_limit', 'apply_before_tax', 'date_expires', '_price', 'cl_edd_session_id', 'cl_recovered_cart', 'cl_lp_session_id');

