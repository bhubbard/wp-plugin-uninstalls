#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rwstripe_show_excerpts'
wp option delete 'rwstripe_collect_password'
wp option delete 'rwstripe_stripe_account_id'
wp option delete 'rwstripe_stripe_access_token'
wp option delete 'rwstripe_stripe_publishable_key'
wp option delete 'rwstripe_stripe_environment'
wp option delete 'rwstripe_disconnected_accounts'

# Delete Transients
wp transient delete 'rwstripe-admin-notice'

