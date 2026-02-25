-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rfwc_welcome_notice_dismissed', 'rfwc_ticket_prefix', 'rfwc_enable_skill_question', 'rfwc_enable_free_entry', 'rfwc_skill_question_pool', 'rfwc_show_shop_countdown', 'rfwc_show_countdown', 'rfwc_show_progress_bar', 'rfwc_show_prize_value', 'rfwc_frontend_accent_color', 'rfwc_version', 'rfwc_db_version', 'rfwc_flush_rewrite_rules', 'rfwc_ticket_badge_text', 'rfwc_ticket_footer_text', 'rfwc_ticket_primary_color', 'rfwc_enable_gift_purchase', 'rfwc_ticket_number_format', 'rfwc_free_entry_text', 'woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country', 'rfwc_qr_code_size', 'rfwc_default_selection_method', 'rfwc_auto_generate_on_payment', 'rfwc_ticket_start_number', 'rfwc_random_org_api_key', 'rfwc_email_admin_draw_failed', 'rfwc_email_admin_winner', 'rfwc_email_gift_notification', 'rfwc_email_prize_claimed', 'rfwc_email_ticket_confirmation', 'rfwc_email_winner_notification');
DELETE FROM wp_options WHERE option_name LIKE 'rfwc_ticket_meta_%';
DELETE FROM wp_options WHERE option_name LIKE 'rfwc_admin_notice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rfwc_status', '_rfwc_ticket_prefix');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rfwc_status', '_rfwc_ticket_prefix');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rfwc_status', '_rfwc_ticket_prefix');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rfwc_status', '_rfwc_ticket_prefix');

