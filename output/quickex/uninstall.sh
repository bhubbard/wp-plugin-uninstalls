#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'quickex_api_key'
wp option delete 'quickex_theme'
wp option delete 'quickex_main_url'
wp option delete 'quickex_how_it_works_url'
wp option delete 'quickex_terms_of_use_url'
wp option delete 'quickex_privacy_policy_url'
wp option delete 'quickex_theme_color'
wp option delete 'quickex_theme_text_color'
wp option delete 'quickex_show_header'
wp option delete 'quickex_show_footer'
wp option delete 'quickex_show_refund_address'

