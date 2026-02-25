#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'clipredirect_first_onboarding'
wp option delete 'woocommerce_wc_clipredirect_settings'
wp option delete 'clipredirect_migration_v2_done'
wp option delete 'woocommerce_wc_clip_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'clip_first_onboarding'

