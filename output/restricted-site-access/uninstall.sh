#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsa_hide_page_cache_notice'
wp option delete 'rsa_options'
wp option delete 'rsa_mode'
wp option delete 'rsa_activation_version'
wp option delete 'active_sitewide_plugins'

