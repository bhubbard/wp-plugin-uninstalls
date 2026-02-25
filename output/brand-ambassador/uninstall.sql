-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('branam_encryption_key', 'branam_blogger_role', 'branam_expert_role', 'branam_blogger_reward', 'branam_expert_reward', 'branam_delete_meta', 'branam_email_subject', 'branam_email_template', 'branam_email_font', 'woocommerce_email_background_color', 'woocommerce_email_base_color', 'woocommerce_email_text_color', 'woocommerce_email_footer_text', 'branam_coupon_payout_calculation_result', 'branam_coupon_payout_selected_orders', 'branam_show_action_buttons');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('branam_only_first_order', '_branam_user_coupon', 'branam_user_numbercartbank', 'branam_user_bankname', '_branam_ambassador_user');
DELETE FROM wp_usermeta WHERE meta_key IN ('branam_only_first_order', '_branam_user_coupon', 'branam_user_numbercartbank', 'branam_user_bankname', '_branam_ambassador_user');
DELETE FROM wp_termmeta WHERE meta_key IN ('branam_only_first_order', '_branam_user_coupon', 'branam_user_numbercartbank', 'branam_user_bankname', '_branam_ambassador_user');
DELETE FROM wp_commentmeta WHERE meta_key IN ('branam_only_first_order', '_branam_user_coupon', 'branam_user_numbercartbank', 'branam_user_bankname', '_branam_ambassador_user');

