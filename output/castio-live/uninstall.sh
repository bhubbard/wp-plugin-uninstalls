#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'castio_rewrite_flushed'
wp option delete 'castio_rewrite_sig'
wp option delete 'castio_hls_latency'
wp option delete 'castio_default_poll'
wp option delete 'castio_max_minutes'
wp option delete 'castio_invite_enabled'
wp option delete 'castio_invite_subject'
wp option delete 'castio_license_key'
wp option delete 'castio_stripe_pk'
wp option delete 'castio_stripe_sk'
wp option delete 'castio_default_currency'
wp option delete 'castio_invite_template'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_last' OR option_name LIKE '_site_transient_%_last'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_win' OR option_name LIKE '_site_transient_%_win'"
wp transient delete 'castio_license_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'castio_purchases'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'castio_purchases'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'castio_purchases'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'castio_purchases'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'castio_purchases_detail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'castio_purchases_detail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'castio_purchases_detail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'castio_purchases_detail'"
