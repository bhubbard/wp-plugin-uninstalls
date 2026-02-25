#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wangguard_blacklisted_words_list'
wp option delete 'woocommerce_enable_myaccount_registration'

