#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecwo-save-template'
wp option delete 'ecwo-templates-settings'
wp option delete 'ecwo_meta'
wp option delete 'ecwo_do_activation_redirect'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_text_color'

