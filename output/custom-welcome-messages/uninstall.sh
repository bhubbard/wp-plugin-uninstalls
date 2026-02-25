#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwl_login_message_id'
wp option delete 'jwl_logout_message_id'
wp option delete 'jwl_login_css_id'
wp option delete 'jwl_logout_css_id'
wp option delete 'jwl_logo_id'
wp option delete 'jwl_headerurl_id'
wp option delete 'jwl_headertitle_id'
wp option delete 'jwl_enable1_id'
wp option delete 'jwl_enable3_id'
wp option delete 'jwl_enable6_id'
wp option delete 'jwl_enable7_id'
wp option delete 'jwl_enable8_id'

