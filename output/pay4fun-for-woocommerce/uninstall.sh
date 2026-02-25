#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'p4f_options'
wp option delete 'p4f_db_version'
wp option delete 'woocommerce_pay4fun_settings'
wp option delete 'widget_wp_p4fdonationswidget'

