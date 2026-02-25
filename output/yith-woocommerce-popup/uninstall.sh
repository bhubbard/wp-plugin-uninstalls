#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"

# Delete Transients
wp transient delete 'yith-popup-mailchimp-newsletter-list'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%-list' OR option_name LIKE '_site_transient_%-list'"
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enable_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enable_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enable_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enable_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leave_page_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leave_page_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leave_page_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leave_page_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ypop_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ypop_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ypop_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ypop_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ypop_javascript'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ypop_javascript'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ypop_javascript'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ypop_javascript'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_template_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_template_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_template_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_template_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_welcome_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_welcome_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_welcome_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_welcome_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_content_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_content_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_content_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_content_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
