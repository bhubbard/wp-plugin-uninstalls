#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dwu_plugin_dismiss_rating_notice'
wp option delete 'dwu_plugin_no_thanks_rating_notice'
wp option delete 'dwu_plugin_installed_time'
wp option delete 'dwu_plugin_dismiss_donate_notice'
wp option delete 'dwu_plugin_no_thanks_donate_notice'
wp option delete 'dwu_plugin_dismissed_time'
wp option delete 'dwu_plugin_dismissed_time_donate'
wp option delete 'woocommerce_wc-upi_settings'
wp option delete 'dwu_plugin_dismiss_knit_pay_upi_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_notice'"

# Delete Transients
wp transient delete 'dwu-admin-notice-on-activation'
wp transient delete 'dwu_plugin_knit_pay_upi_notice_random_priority'

