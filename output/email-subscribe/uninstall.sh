#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_news_letter_settings'
wp option delete 'email_subscription_popup_messages'
wp option delete 'mass_email_queue_news_subscriber'
wp option delete 'mass_email_subscribers_succ'
wp option delete 'mass_email_subscribers_err'

