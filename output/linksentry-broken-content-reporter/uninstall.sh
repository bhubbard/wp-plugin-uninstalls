#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'linkbrco_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkbrco_issue_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkbrco_issue_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkbrco_issue_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkbrco_issue_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkbrco_page_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkbrco_page_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkbrco_page_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkbrco_page_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkbrco_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkbrco_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkbrco_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkbrco_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkbrco_read'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkbrco_read'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkbrco_read'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkbrco_read'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkbrco_reporter_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkbrco_reporter_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkbrco_reporter_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkbrco_reporter_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkbrco_user_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkbrco_user_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkbrco_user_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkbrco_user_agent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkbrco_ip_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkbrco_ip_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkbrco_ip_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkbrco_ip_hash'"
