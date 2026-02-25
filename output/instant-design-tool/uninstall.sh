#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_settings_idt_settings_synced'
wp option delete 'idt_version'
wp option delete 'wc_settings_idt_button_text'
wp option delete 'wc_settings_idt_button_text_single'
wp option delete 'IDT_flash_notices'
wp option delete 'wc_settings_idt_connect_code'
wp option delete 'wc_settings_idt_api_key'
wp option delete 'wc_settings_idt_editor_domain'
wp option delete 'IDT_pdf_request_quota_reached'
wp option delete 'wc_settings_idt_guest_mode'
wp option delete 'wc_settings_idt_display_project_details'
wp option delete 'IDT_elementor_mode'
wp option delete 'idt_elementor_notice_displayed'
wp option delete 'idt_elementor_mode'
wp option delete 'wc_settings_idt_print_api_client_id'
wp option delete 'wc_settings_idt_print_api_secret'
wp option delete 'wc_settings_idt_print_api_status'
wp option delete 'idt_firstrun_completed'
wp option delete 'wc_settings_idt_login_cookie_updated'
wp option delete 'wc_settings_idt_printapi_environment'
wp option delete 'wc_settings_idt_logging_enabled'

# Clear Cron Jobs
wp cron event delete 'idt_run_output_binder'
wp cron event delete 'idt_run_output_binder_by_guid'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idt_price_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idt_price_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idt_price_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idt_price_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'idt_default_amount_of_pages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'idt_default_amount_of_pages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'idt_default_amount_of_pages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'idt_default_amount_of_pages'"
