#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qrlogin_del_http'
wp option delete 'qrlogin_timeout'
wp option delete 'qrlogin_poll_lifetime'
wp option delete 'qrlogin_post_timeout'
wp option delete 'qrlogin_login_timeout'
wp option delete 'qrlogin_qrcode_size'
wp option delete 'qrlogin_qrcode_fore_color'
wp option delete 'qrlogin_qrcode_back_color'

