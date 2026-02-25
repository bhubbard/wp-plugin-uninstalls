#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ees-connecting-status'
wp option delete 'ee_options'
wp option delete 'ees_plugin_dir_name'
wp option delete 'ee_from_email'
wp option delete 'ee_is_created_channels'
wp option delete 'elastic-email-to-send-status'
wp option delete 'daterangeselect'
wp option delete 'ee-apikey'
wp option delete 'ee_send-email-type'
wp option delete 'ee_mimetype'
wp option delete 'ee_config_from_name'
wp option delete 'ee_config_override_wooCommerce'
wp option delete 'ee_config_from_email'
wp option delete 'ee_channel_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'ee_config_woocommerce_original_email'
wp option delete 'woocommerce_email_from_name'
wp option delete 'ee_config_woocommerce_original_name'

