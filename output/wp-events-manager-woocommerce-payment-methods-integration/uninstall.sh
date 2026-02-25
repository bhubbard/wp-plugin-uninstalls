#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thimpress_events_email_register_times'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%woo_payment_enable'"
wp option delete 'thimpress_events_woo_event_register_process'
wp option delete 'thimpress_events_woo_payment_enable'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tp_event_woo_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tp_event_woo_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tp_event_woo_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tp_event_woo_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tp_event_event_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tp_event_event_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tp_event_event_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tp_event_event_order'"
