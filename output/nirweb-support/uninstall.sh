#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'size_of_file_wpyartik'
wp option delete 'display_icon_send_ticket'
wp option delete 'select_page_ticket'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'position_icon_nirweb_ticket_front'
wp option delete 'icon_nirweb_ticket_front'
wp option delete 'nadurl'
wp option delete 'mojaz_file_upload_user_wpyar'
wp option delete 'template_send_ticket_email'
wp option delete 'active_send_mail_to_poshtiban'
wp option delete 'subject_mail_poshtiban_new'
wp option delete 'poshtiban_text_email_send'
wp option delete 'subject_mail_poshtiban_answer'
wp option delete 'poshtiban_text_email_send_answer'
wp option delete 'require_procut_user_wpyar'
wp option delete 'text_top_send_mail_nirweb_ticket'
wp option delete 'active_send_mail_to_user'
wp option delete 'subject_mail_user_new'
wp option delete 'user_text_email_send'
wp option delete 'subject_mail_user_answer'
wp option delete 'user_text_email_send_answer'
wp option delete 'nirweb_ticket_perfix'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nirweb_ads_ticket'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nirweb_ads_ticket'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nirweb_ads_ticket'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nirweb_ads_ticket'"
