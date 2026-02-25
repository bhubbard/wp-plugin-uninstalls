#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'license_key'
wp option delete 'gf_last_sync'
wp option delete 'gf_datas'
wp option delete 'cloud_nr'
wp option delete 'consumer_key'
wp option delete 'secret_key'
wp option delete 'username'
wp option delete 'password'
wp option delete 'store_articles'

