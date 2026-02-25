#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bcAGGT_gate_active'
wp option delete 'bcAGGT_page_cookie'
wp option delete 'bcAGGT_page_privacy'
wp option delete 'bcAGGT_page_disclaimer'
wp option delete 'bcAGGT_gate_cookietime'
wp option delete 'bcAGGT_gate_age'
wp option delete 'bcAGGT_gate_cookienotice'
wp option delete 'bcAGGT_gate_gtype'
wp option delete 'bcAGGT_gate_theme'
wp option delete 'bcAGGT_gate_css'
wp option delete 'bcAGGT_gate_logo'
wp option delete 'bcAGGT_gate_message'
wp option delete 'bcAGGT_gate_message_footer'
wp option delete 'bcAGGT_gate_background_image'

