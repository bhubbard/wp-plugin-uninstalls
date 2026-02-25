#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_inlire_show_phpver_notice'
wp option delete 'wc_inlire_show_wcver_notice'
wp option delete 'wc_inlire_show_curl_notice'
wp option delete 'wc_inlire_show_urlservice_notice'
wp option delete 'wc_inlire_show_token_notice'
wp option delete 'wc_inlire_show_maxamount_notice'
wp option delete 'woocommerce_inlire_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'wc_inlire_version'

