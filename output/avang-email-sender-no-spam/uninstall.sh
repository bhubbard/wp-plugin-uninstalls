#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avang-email-sender-basename'
wp option delete 'avang-email-subscribe-basename'
wp option delete 'avangemail_plugin_dir_name'
wp option delete 'avangemail_options'
wp option delete 'avangemail_send-email-type'
wp option delete 'avangemail_config_from_name'
wp option delete 'avangemail_config_from_email'
wp option delete 'avangemail_from_email'
wp option delete 'avangemail_config_override_wooCommerce'
wp option delete 'avangemail_config_woocommerce_original_email'
wp option delete 'avangemail_config_woocommerce_original_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_email_from_name'

