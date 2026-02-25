#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mwb_zndsk_account_details'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'mwb_zndsk_order_config_options'
wp option delete 'zendesk_suggestions_sent'
wp option delete 'zendesk_email_error'
wp option delete 'zendesk_url_error'
wp option delete 'enable_create_ticket_on_order_status'
wp option delete 'order_status_for_ticket'
wp option delete 'mwb_create_subject_automatic'
wp option delete 'mwb_create_comment_automatic'
wp option delete 'mwb_create_tag_automatic'
wp option delete 'zendesk_new_ticket_for_new_user'
wp option delete 'zendesk_suggestions_later'
wp option delete 'woocommerce_email_footer_text'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zenwoo_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zenwoo_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zenwoo_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zenwoo_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mwb_automatic_ticket_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mwb_automatic_ticket_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mwb_automatic_ticket_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mwb_automatic_ticket_created'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'zendesk_new_user_ticket_created'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'zendesk_new_user_ticket_created'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'zendesk_new_user_ticket_created'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'zendesk_new_user_ticket_created'"
