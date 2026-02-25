#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mailpoet_wp_ecommerce_subscribe_too'
wp option delete 'mailpoet_enable_checkout'
wp option delete 'mailpoet_checkout_label'
wp option delete 'mailpoet_wp_ecommerce_active'

