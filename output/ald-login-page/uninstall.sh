#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ald_login_page_db_version'
wp option delete 'ald_login_page_logo'
wp option delete 'ald_login_page_logo_width'
wp option delete 'ald_login_page_logo_height'
wp option delete 'ald_login_page_logo_padding'
wp option delete 'ald_login_page_bgcolor'
wp option delete 'ald_login_page_fontcolor'

