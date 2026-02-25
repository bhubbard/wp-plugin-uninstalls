-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_settings_idt_settings_synced', 'idt_version', 'wc_settings_idt_button_text', 'wc_settings_idt_button_text_single', 'IDT_flash_notices', 'wc_settings_idt_connect_code', 'wc_settings_idt_api_key', 'wc_settings_idt_editor_domain', 'IDT_pdf_request_quota_reached', 'wc_settings_idt_guest_mode', 'wc_settings_idt_display_project_details', 'IDT_elementor_mode', 'idt_elementor_notice_displayed', 'idt_elementor_mode', 'wc_settings_idt_print_api_client_id', 'wc_settings_idt_print_api_secret', 'wc_settings_idt_print_api_status', 'idt_firstrun_completed', 'wc_settings_idt_login_cookie_updated', 'wc_settings_idt_printapi_environment', 'wc_settings_idt_logging_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shortcode', 'idt_price_per_page', 'idt_default_amount_of_pages');
DELETE FROM wp_usermeta WHERE meta_key IN ('shortcode', 'idt_price_per_page', 'idt_default_amount_of_pages');
DELETE FROM wp_termmeta WHERE meta_key IN ('shortcode', 'idt_price_per_page', 'idt_default_amount_of_pages');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shortcode', 'idt_price_per_page', 'idt_default_amount_of_pages');

