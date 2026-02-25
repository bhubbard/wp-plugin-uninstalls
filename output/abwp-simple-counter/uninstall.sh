#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abwp_sc_yandex_webmaster'
wp option delete 'abwp_sc_yandex_metrika'
wp option delete 'abwp_sc_yandex_metrika_position'
wp option delete 'abwp_sc_google_search_console'
wp option delete 'abwp_sc_google_analytics'
wp option delete 'abwp_sc_google_analytics_position'
wp option delete 'abwp_sc_yandex_metrika_token'
wp option delete 'abwp_sc_yandex_metrika_counter_id'

