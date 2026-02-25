#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mys_hide_bar'
wp option delete 'mys_email_from'
wp option delete 'mys_email_sender'
wp option delete 'mys_footer'
wp option delete 'mys_hide_theme_edt'
wp option delete 'mys_hide_plugin_edt'
wp option delete 'mys_login_url'
wp option delete 'mys_login_rurl'
wp option delete 'mys_logout_url'
wp option delete 'mys_show_tag'
wp option delete 'mys_show_tag_all'
wp option delete 'mys_show_tag_page'
wp option delete 'mys_before_tag'
wp option delete 'mys_after_tag'
wp option delete 'mys_show_to_admin'

