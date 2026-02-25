#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ywraq_page_id'
wp option delete 'ywraq_hide_add_to_cart'
wp option delete 'ywraq_after_click_action'
wp option delete 'ywraq_show_button_near_add_to_cart'
wp option delete 'ywraq_show_btn_link'
wp option delete 'ywraq_hide_price'
wp option delete 'ywctm_exclude_price_alternative_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_yith_ywraq_session_%'"
wp option delete 'ywraq_show_btn_link_text'
wp option delete 'ywraq_add_to_quote_button_color'
wp option delete 'woocommerce_email_from_name'
wp option delete 'woocommerce_email_from_address'
wp option delete 'ywraq_activate_thank_you_page'
wp option delete 'ywraq_show_btn_single_page'
wp option delete 'ywraq_accept_link_label'
wp option delete 'ywraq_reject_link_label'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"
wp option delete 'woocommerce_email_footer_text'
wp option delete 'ywraq_add_privacy_checkbox'
wp option delete 'ywraq_privacy_description'
wp option delete 'ywraq_privacy_label'
wp option delete 'ywraq_show_sku'
wp option delete 'ywraq_show_update_list'
wp option delete 'ywraq_update_list_label'
wp option delete 'ywraq_page_list_layout_template'

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'ywraq_clean_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
