#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sc_uninstall'
wp option delete 'sc_previous_account'
wp option delete 'surecart_registered_webhook'
wp option delete 'surecart_previous_webhook'
wp option delete 'surecart_order-confirmation_page_id'
wp option delete 'surecart_dashboard_page_id'
wp option delete 'surecart_checkout_sc_form_id'
wp option delete 'surecart_use_esm_loader'
wp option delete 'surecart_checkout_page_id'
wp option delete 'sc_api_token'
wp option delete 'surecart_cart_icon'
wp option delete 'surecart_cart_menu_selected_ids'
wp option delete 'surecart_cart_icon_type'
wp option delete 'surecart_cart_menu_always_shown'
wp option delete 'sc_slide_out_cart_disabled'
wp option delete 'surecart_cart_menu_alignment'
wp option delete 'sc_stripe_payment_element'
wp option delete 'surecart_load_block_assets_on_demand'
wp option delete 'surecart_auto_sync_user_to_customer'
wp option delete 'surecart_migration_version'
wp option delete 'surecart_hide_help_widget'
wp option delete 'surecart_source'
wp option delete 'rewrite_rules'
wp option delete 'surecart_permalinks'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'surecart_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_admin_menu'"
wp option delete 'surecart_admin_toolbar_disabled'
wp option delete 'surecart_theme'
wp option delete 'surecart_load_stripe_js'
wp option delete 'surecart_currency_switcher_selected_ids'
wp option delete 'surecart_currency_switcher_alignment'
wp option delete 'surecart_recaptcha_enabled'
wp option delete 'surecart_recaptcha_secret_key'
wp option delete 'surecart_recaptcha_site_key'
wp option delete 'surecart_honeypot_enabled'
wp option delete 'surecart_password_validation_enabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp transient delete 'surecart_account'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sc_checkout_password_hash_%' OR option_name LIKE '_site_transient_sc_checkout_password_hash_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_surecart_tutor_lms_product_%' OR option_name LIKE '_site_transient_surecart_tutor_lms_product_%'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'collection'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'collection'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'collection'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'collection'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managesurecart_page_sc-orderscolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managesurecart_page_sc-orderscolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managesurecart_page_sc-orderscolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managesurecart_page_sc-orderscolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'managesurecart_page_sc-productscolumnshidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'managesurecart_page_sc-productscolumnshidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'managesurecart_page_sc-productscolumnshidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'managesurecart_page_sc-productscolumnshidden'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surecart_dashboard_navigation_billing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surecart_dashboard_navigation_billing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surecart_dashboard_navigation_billing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surecart_dashboard_navigation_billing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_surecart_dashboard_navigation_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_surecart_dashboard_navigation_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_surecart_dashboard_navigation_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_surecart_dashboard_navigation_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surecart_dashboard_show_logo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surecart_dashboard_show_logo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surecart_dashboard_show_logo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surecart_dashboard_show_logo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_surecart_dashboard_logo_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_surecart_dashboard_logo_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_surecart_dashboard_logo_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_surecart_dashboard_logo_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_customer_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_customer_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_customer_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_customer_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_variant_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_variant_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_variant_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_variant_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'default_password_nag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sc_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sc_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sc_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sc_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template_part'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template_part'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template_part'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template_part'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gallery'"
