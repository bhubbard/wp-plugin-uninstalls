#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'free_contact_us_monetz_free_offer'
wp option delete 'free_contact_us_opt_intelligence_pid_no'
wp option delete 'free_contact_us_contact_email'
wp option delete 'free_contact_us_auto_email'
wp option delete 'free_contact_us_auto_subject'
wp option delete 'free_contact_us_smtp_secure'
wp option delete 'free_contact_us_smtp_port'
wp option delete 'free_contact_us_click_link_url'
wp option delete 'free_contact_us_auto_reply_on'
wp option delete 'free_contact_us_auto_from_email'
wp option delete 'free_contact_us_auto_from_name'
wp option delete 'free_contact_us_aw_list_id'
wp option delete 'free_contact_us_aweber_on'
wp option delete 'free_contact_us_auth_code'
wp option delete 'free_contact_us_access_secret'
wp option delete 'free_contact_us_access_key'
wp option delete 'free_contact_us_customer_secret'
wp option delete 'free_contact_us_customer_key'
wp option delete 'free_contact_us_aw_subscr_title'
wp option delete 'free_contact_us_unsbr_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Layout'"
