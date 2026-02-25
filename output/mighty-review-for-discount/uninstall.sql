-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mighty_rfd_basic_configuration', 'woocommerce_email_footer_text', 'activate_mighty_rfd');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mighty_triggering_event', 'mighty_coupon_description', 'mighty_discount_type', 'mighty_coupon_amount', 'mighty_expire_after_days', 'mighty_single_use_only', 'mighty_individual_use_only');
DELETE FROM wp_usermeta WHERE meta_key IN ('mighty_triggering_event', 'mighty_coupon_description', 'mighty_discount_type', 'mighty_coupon_amount', 'mighty_expire_after_days', 'mighty_single_use_only', 'mighty_individual_use_only');
DELETE FROM wp_termmeta WHERE meta_key IN ('mighty_triggering_event', 'mighty_coupon_description', 'mighty_discount_type', 'mighty_coupon_amount', 'mighty_expire_after_days', 'mighty_single_use_only', 'mighty_individual_use_only');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mighty_triggering_event', 'mighty_coupon_description', 'mighty_discount_type', 'mighty_coupon_amount', 'mighty_expire_after_days', 'mighty_single_use_only', 'mighty_individual_use_only');

