#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intmau_mautic_base_url'
wp option delete 'intmau_mautic_client_id'
wp option delete 'intmau_mautic_client_secret'
wp option delete 'intmau_mautic_tracking_enabled'
wp option delete 'intmau_mautic_access_token'
wp option delete 'intmau_woocommerce_enable_newsletter'
wp option delete 'intmau_woocommerce_newsletter_tag'
wp option delete 'intmau_woocommerce_newsletter_message'
wp option delete 'intmau_mautic_refresh_token'
wp option delete 'intmau_mautic_token_expires'
wp option delete 'intmau_module_elementor'
wp option delete 'intmau_module_woocommerce'

# Clear Cron Jobs
wp cron event delete 'intmau_refresh_mautic_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accepts_marketing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accepts_marketing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accepts_marketing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accepts_marketing'"
