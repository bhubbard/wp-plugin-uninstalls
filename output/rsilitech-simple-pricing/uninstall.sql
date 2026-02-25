-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rsilitechsp_roles_discounts', 'rsilitechsp_show_save_message', 'rsilitechsp_show_role_badge', 'rsilitechsp_show_original_price', 'rsilitechsp_stack_with_coupons', 'rsilitechsp_apply_to_sale_items', 'rsilitech_simple_pricing_activation_time', 'rsilitech_simple_pricing_notices_shown');
DELETE FROM wp_options WHERE option_name LIKE '%_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%_upgrade_notice_dismissed';
DELETE FROM wp_options WHERE option_name LIKE '%_review_notice_dismissed';

