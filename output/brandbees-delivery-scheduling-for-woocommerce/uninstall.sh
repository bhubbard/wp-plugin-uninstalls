#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'brandbees_preparation_type'
wp option delete 'brandbees_global_preparation_time'
wp option delete 'brandbees_cutoff_enabled'
wp option delete 'brandbees_cutoff_order_types'
wp option delete 'brandbees_cutoff_time'
wp option delete 'brandbees_cutoff_timezone'
wp option delete 'brandbees_cutoff_days'
wp option delete 'brandbees_cutoff_same_day'
wp option delete 'brandbees_cutoff_notice_message'
wp option delete 'brandbees_estimate_enabled_product'
wp option delete 'brandbees_estimate_enabled_cart'
wp option delete 'brandbees_estimate_enabled_checkout'
wp option delete 'brandbees_estimate_display_text'
wp option delete 'brandbees_estimate_date_format'
wp option delete 'brandbees_delivery_estimate_date_format_custom'
wp option delete 'brandbees_label_delivery_date'
wp option delete 'brandbees_label_time_slot'
wp option delete 'brandbees_label_estimated_delivery'
wp option delete 'brandbees_label_required_error'
wp option delete 'brandbees_label_unavailable_error'
wp option delete 'brandbees_delivery_schedule'
wp option delete 'brandbees_estimate_date_format_custom'
wp option delete 'active_sitewide_plugins'
wp option delete 'brandbees_db_version'
wp option delete 'brandbees_prep_time_hours'
wp option delete 'brandbees_days_ahead'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_brandbees_estimate_%' OR option_name LIKE '_site_transient_brandbees_estimate_%'"
wp transient delete 'brandbees_estimate_cart'

# Clear Cron Jobs
wp cron event delete 'brandbees_cleanup_old_bookings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brandbees_preparation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brandbees_preparation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brandbees_preparation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brandbees_preparation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fulfillment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fulfillment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fulfillment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fulfillment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_delivery_time_slot'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_delivery_time_slot'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_delivery_time_slot'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_delivery_time_slot'"
