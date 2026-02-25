-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mwb_zndsk_account_details', 'woocommerce_myaccount_page_id', 'mwb_zndsk_order_config_options', 'zendesk_suggestions_sent', 'zendesk_email_error', 'zendesk_url_error', 'enable_create_ticket_on_order_status', 'order_status_for_ticket', 'mwb_create_subject_automatic', 'mwb_create_comment_automatic', 'mwb_create_tag_automatic', 'zendesk_new_ticket_for_new_user', 'zendesk_suggestions_later', 'woocommerce_email_footer_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'zenwoo_user_id', 'mwb_automatic_ticket_created', 'zendesk_new_user_ticket_created');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'zenwoo_user_id', 'mwb_automatic_ticket_created', 'zendesk_new_user_ticket_created');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'zenwoo_user_id', 'mwb_automatic_ticket_created', 'zendesk_new_user_ticket_created');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'nickname', 'zenwoo_user_id', 'mwb_automatic_ticket_created', 'zendesk_new_user_ticket_created');

