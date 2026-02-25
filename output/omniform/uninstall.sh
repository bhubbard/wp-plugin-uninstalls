#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'omniform_analytics_db_version'
wp option delete 'omniform_initial_version'
wp option delete 'omniform_activated_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_site_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_secret_key'"
wp option delete 'show_comments_cookies_opt_in'
wp option delete 'omniform_hcaptcha_secret_key'
wp option delete 'omniform_recaptchav2_secret_key'
wp option delete 'omniform_recaptchav3_secret_key'
wp option delete 'omniform_turnstile_secret_key'

# Delete Transients
wp transient delete 'omniform_analytics_salt'
wp transient delete 'omniform_just_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'submit_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'submit_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'submit_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'submit_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'submit_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'submit_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'submit_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'submit_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'required_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'required_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'required_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'required_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notify_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notify_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notify_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notify_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notify_email_subject'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notify_email_subject'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notify_email_subject'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notify_email_subject'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_omniform_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_omniform_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_omniform_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_omniform_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'omniform_dismissed_newsletter_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'omniform_dismissed_newsletter_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'omniform_dismissed_newsletter_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'omniform_dismissed_newsletter_notice'"
