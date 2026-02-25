#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'yith-wcwtl-form-message'
wp option delete 'yith-wcwtl-button-add-label'
wp option delete 'yith-wcwtl-button-leave-label'
wp option delete 'yith-wcwtl-button-success-msg'
wp option delete 'yith-wcwtl-button-error-msg-for-user-already-subscribed'
wp option delete 'yith-wcwtl-leave-message'
wp option delete 'yith-wcwtl-button-error-msg'
wp option delete 'yith-wcwtl-enable-privacy-checkbox'
wp option delete 'yith-wcwtl-keep-after-email'
wp option delete 'yith-wcwtl-enable'
wp option delete 'woocommerce_myaccount_waiting_list_endpoint'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_yith_waitlist_mail_instock_settings'
wp option delete 'yith-wcwtl-section-background'
wp option delete 'yith-wcwtl-section-border-radius'
wp option delete 'yith-wcwtl-notice-colors'
wp option delete 'yith-wcwtl-privacy-checkbox-text'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"
wp option delete 'yith-wcwtl-form-placeholder'
wp option delete 'yith-wcwtl-enable-button-leave'

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yith_wcwtl_products_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yith_wcwtl_products_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yith_wcwtl_products_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yith_wcwtl_products_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yith_wcwtl_users_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yith_wcwtl_users_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yith_wcwtl_users_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yith_wcwtl_users_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
