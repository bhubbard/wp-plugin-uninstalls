#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'link_exchange_use_captcha'
wp option delete 'link_exchange_captcha_private_key'
wp option delete 'link_exchange_captcha_public_key'
wp option delete 'link_exchange_email_admin'
wp option delete 'link_exchange_privacy'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_exchange_user_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_exchange_user_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_exchange_user_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_exchange_user_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_exchange_user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_exchange_user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_exchange_user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_exchange_user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_exchange_landing_page_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_exchange_landing_page_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_exchange_landing_page_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_exchange_landing_page_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_exchange_site_banner_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_exchange_site_banner_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_exchange_site_banner_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_exchange_site_banner_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_exchange_reciprocal_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_exchange_reciprocal_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_exchange_reciprocal_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_exchange_reciprocal_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_exchange_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_exchange_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_exchange_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_exchange_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_exchange_accepted_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_exchange_accepted_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_exchange_accepted_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_exchange_accepted_once'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'link_exchange_rejected_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'link_exchange_rejected_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'link_exchange_rejected_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'link_exchange_rejected_once'"
