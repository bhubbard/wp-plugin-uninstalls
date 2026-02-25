#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quotecart_mu_file_version'
wp option delete 'quotecart_use_wp_auth'
wp option delete 'quotecart_wp_auth_secret'
wp option delete 'quotecart_auto_display_quotes_in_woo_account'
wp option delete 'quotecart_disable_shortcode_css'
wp option delete 'quotecart_display_add_to_quote_after_add_to_cart'
wp option delete 'quotecart_quotes_page_id'

# Delete Transients
wp transient delete 'quotecart_login_error'
wp transient delete 'quotecart_login_success'
wp transient delete 'quotecart_register_error'
wp transient delete 'quotecart_register_show_login_link'
wp transient delete 'quotecart_register_success'
wp transient delete 'quotecart_logout_success'
wp transient delete 'quotecart_quote_error'
wp transient delete 'quotecart_quote_deleted'
wp transient delete 'quotecart_quote_created'
wp transient delete 'quotecart_add_to_quote_error'
wp transient delete 'quotecart_add_to_quote_success'
wp transient delete 'quotecart_quote_updated'
wp transient delete 'quotecart_status_error'
wp transient delete 'quotecart_status_updated'
wp transient delete '_quotecart_welcome_screen_activation_redirect'

