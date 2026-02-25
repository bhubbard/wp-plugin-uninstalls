#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'openbotauth_use_hosted_verifier'
wp option delete 'openbotauth_verifier_url'
wp option delete 'openbotauth_policy'
wp option delete 'openbotauth_payment_url'
wp option delete 'openbotauth_llms_enabled'
wp option delete 'openbotauth_feed_enabled'
wp option delete 'openbotauth_feed_limit'
wp option delete 'openbotauth_feed_post_types'
wp option delete 'openbotauth_prefer_yoast_llms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%signed_total'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%verified_total'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%requests_total'"
wp option delete 'openbotauth_markdown_enabled'

# Delete Transients
wp transient delete 'openbotauth_cleanup_ran'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_openbotauth_policy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_openbotauth_policy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_openbotauth_policy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_openbotauth_policy'"
