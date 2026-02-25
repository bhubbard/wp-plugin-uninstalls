#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ocssl'
wp option delete 'ocssl_areas'
wp option delete 'ocssl_activation_redirect'
wp option delete 'ocssl_nonsslredirect'
wp option delete 'ocssl_ratereview_scheduled'
wp option delete 'ocssl_dismissed-ssloff'
wp option delete 'ocssl_dismissed-ratereview'
wp option delete 'ocssl_toolsmenu'
wp option delete 'ocssl_global'
wp option delete 'ocssl_showmessage_ratereview'
wp option delete 'ocssl_hidemessage_ratereview'
wp option delete 'one_click_ssl_smart_rating_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ocssl_dismissed-%'"
wp option delete 'ocssl_auth_username'
wp option delete 'ocssl_auth_password'
wp option delete 'ocssl_basic_auth_required'

# Delete Transients
wp transient delete 'ocssl_settings_notice'

# Clear Cron Jobs
wp cron event delete 'ocssl_ratereviewhook'

