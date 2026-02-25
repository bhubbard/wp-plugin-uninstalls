#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wa_hello_whatsapp_number'
wp option delete 'wa_hello_hide_button'
wp option delete 'wa_hello_shortcode_message'
wp option delete 'wa_hello_shortcode_text_button'
wp option delete 'wa_hello_shortcode_target'
wp option delete 'wa_hello_gdpr_status_enable'
wp option delete 'wa_hello_gdpr_message'
wp option delete 'wa_hello_gdpr_privacy_page'
wp option delete 'wa_hello_floating_button'
wp option delete 'wa_hello_floating_button_position'
wp option delete 'wa_hello_floating_message'
wp option delete 'wa_hello_floating_target'
wp option delete 'wa_hello_floating_tooltip_enable'
wp option delete 'wa_hello_floating_tooltip'
wp option delete 'wa_hello_floating_hide_mobile'
wp option delete 'wa_hello_option_phone_number'
wp option delete 'wa_hello_option_message'

