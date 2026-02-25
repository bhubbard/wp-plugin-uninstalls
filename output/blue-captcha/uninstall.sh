#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blcap_settings'
wp option delete 'blcap_protection_key'
wp option delete 'blcap_version'
wp option delete 'blcap_ip_informer_url'
wp option delete 'blcap_date'
wp option delete 'blcap_sessions'

