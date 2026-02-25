#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcb_review_prompt_removed'
wp option delete 'wpcb_review_prompt_delay'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_welcome'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp option delete 'wp-call-button-settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-widget-main-a'"

# Delete Transients
wp transient delete 'wpcb_review_prompt_delay'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_mail_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_mail_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_mail_smtp_pro_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_mail_smtp_pro_banner_dismissed'"
