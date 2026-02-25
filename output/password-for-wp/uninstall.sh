#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'g3_password_status'
wp option delete 'g3_password_pass'
wp option delete 'g3_text1'
wp option delete 'g3_text2'
wp option delete 'g3_color_text'

