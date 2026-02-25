#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'third_party_cookie_eraser_cookie_name'
wp option delete 'third_party_cookie_eraser_cookie_value'
wp option delete 'third_party_cookie_eraser_lang'

