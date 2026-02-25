#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notifyodoo_url'
wp option delete 'notifyodoo_notify_about_new_customer'
wp option delete 'notifyodoo_notify_about_new_order'
wp option delete 'notifyodoo_add_tracking_image'
wp option delete 'notifyodoo_allow_ip_address'
wp option delete 'notifyodoo_last_access_ip_address'

