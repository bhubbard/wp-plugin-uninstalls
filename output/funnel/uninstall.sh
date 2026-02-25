#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'funnel_emails_subject'
wp option delete 'funnel_emails_body'
wp option delete 'funnel_pages_enabled'
wp option delete 'funnel_user_to_lead'
wp option delete 'funnel_user_state'
wp option delete 'funnel_referrer_enabled'
wp option delete 'funnel_referrer_param'
wp option delete 'funnel_referrer_state'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'funnel_user_state'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'funnel_user_state'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'funnel_user_state'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'funnel_user_state'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'generation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'generation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'generation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'generation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'interests'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'interests'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'interests'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'interests'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'purchase_motivations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'purchase_motivations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'purchase_motivations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'purchase_motivations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formal_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formal_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formal_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formal_level'"
