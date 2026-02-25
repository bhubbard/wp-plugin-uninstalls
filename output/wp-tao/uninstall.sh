#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptao_hidden_widgets'
wp option delete 'wptao_dashboard_tiles_order'
wp option delete 'wptao_version'
wp option delete 'wptao_completed_upgrades'
wp option delete 'wptao_doing_upgrade'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_coupons'
wp option delete 'woocommerce_force_ssl_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_db_version'"
wp option delete 'wptao_mail_notice_dissmis'
wp option delete 'wptao_currency_set'
wp option delete 'wptao_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wptao_events_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wptao_events_meta_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wptao_events_tags_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wptao_fingerprints_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wptao_users_db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wptao_users_meta_db_version'"
wp option delete 'wptao_subscribed'
wp option delete 'wptao_promobox_custom_work_dissmis'

# Delete Transients
wp transient delete 'wtbp_wptao_db_delete_events'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wptao_events_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wptao_events_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wptao_events_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wptao_events_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edd_sl_payment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edd_sl_payment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edd_sl_payment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edd_sl_payment_id'"
