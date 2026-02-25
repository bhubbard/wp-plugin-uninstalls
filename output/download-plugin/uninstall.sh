#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'download_plugin_do_activation_redirect'
wp option delete 'dpwap_dismiss_eventprime_promotion'
wp option delete 'dpwap_dismiss_offer_notice'
wp option delete 'dpwap_downloads_url'
wp option delete 'dpwap_plugins'

