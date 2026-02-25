#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kontur_style_admin_logo'
wp option delete 'kontur_admin_style_adminbar_background'
wp option delete 'kontur_admin_style_login_logo_link'
wp option delete 'kontur_admin_style_logo_background_image'
wp option delete 'kontur_admin_style_login_background_image'
wp option delete 'kontur-settings-checkbox-admin-style'
wp option delete 'kontur_style_admin_use_logo'
wp option delete 'kontur-settings-checkbox-login'
wp option delete 'kontur_admin_current_sub_menu'
wp option delete 'kontur_admin_adminmenuwrap'
wp option delete 'kontur_admin_adminmenuback'
wp option delete ' kontur_style_admin_logo'
wp option delete 'kontur-settings-checkbox-dashboard'
wp option delete 'kontur-settings-use-stlye'
wp option delete 'kontur-settings-checkbox-media'
wp option delete 'kontur_admin_style_background'

# Delete Transients
wp transient delete 'kontur-admin-style-notice'

