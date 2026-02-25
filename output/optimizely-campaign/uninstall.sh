#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optimizelycampaign_newsletter_options'
wp option delete 'optimizelycampaign_db_version'
wp option delete 'optimizelycampaign_mail_options'
wp option delete 'optimizelycampaign_wpcore_options'
wp option delete 'optimizelycampaign_woocommerce_options'
wp option delete 'optimizelycampaign_other_options'

# Delete Transients
wp transient delete 'optimizelycampaign_smtp_error_log'
wp transient delete 'optimizelycampaign_subscription_message'

# Clear Cron Jobs
wp cron event delete 'optimizelycampaign_error_queue_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optimizelycampaign_newsletter_subscription'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optimizelycampaign_newsletter_subscription'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optimizelycampaign_newsletter_subscription'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optimizelycampaign_newsletter_subscription'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optimizelycampaign_subscription_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optimizelycampaign_subscription_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optimizelycampaign_subscription_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optimizelycampaign_subscription_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optimizelycampaign_previous_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optimizelycampaign_previous_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optimizelycampaign_previous_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optimizelycampaign_previous_email'"
