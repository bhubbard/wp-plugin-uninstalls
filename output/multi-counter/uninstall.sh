#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mx-google-authkey'
wp option delete 'mx-google-token'
wp option delete 'mx-google-refresh-token'
wp option delete 'mx-google-counter'
wp option delete 'mx-yandex-authkey'
wp option delete 'mx-yandex-counter'
wp option delete 'mx-statcounter-config'
wp option delete 'mx-openstat-config'
wp option delete 'mx-openstat-counter'
wp option delete 'mx-yandex-token'

