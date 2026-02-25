#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith-wfbt-button-color'
wp option delete 'yith-wfbt-button-color-hover'
wp option delete 'yith-wfbt-button-text-color'
wp option delete 'yith-wfbt-button-text-color-hover'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"
wp option delete 'yith-wfbt-button-label'
wp option delete 'yith-wfbt-total-label'
wp option delete 'yith-wfbt-form-title'

# Delete Transients
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
