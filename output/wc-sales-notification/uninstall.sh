#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fake_title'
wp option delete 'fake_price'
wp option delete 'fake_buyer'
wp option delete 'fake_description'
wp option delete 'fake_image'
wp option delete 'wc_sales_notification_do_activation_redirect'

