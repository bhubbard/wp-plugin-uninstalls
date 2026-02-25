#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spwdprot_password_hash'
wp option delete 'spwdprot_plugin_enabled'
wp option delete 'spwdprot_impressum_page'
wp option delete 'spwdprot_privacy_page'
wp option delete 'spwdprot_logo_url'
wp option delete 'spwdprot_logo_shape'
wp option delete 'spwdprot_page_title'
wp option delete 'spwdprot_login_text'
wp option delete 'spwdprot_background_color'
wp option delete 'spwdprot_button_color'
wp option delete 'spwdprot_button_text_color'
wp option delete 'spwdprot_link_color'
wp option delete 'spwdprot_show_admin_login'
wp option delete 'spwdprot_show_legal_links'

# Delete Transients
wp transient delete 'spwdprot_password_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spwdprot_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spwdprot_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spwdprot_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spwdprot_last_login'"
