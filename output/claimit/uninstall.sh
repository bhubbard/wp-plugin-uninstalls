#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'claimit_google_webmaster'
wp option delete 'claimit_google_submit_button'
wp option delete 'claimit_bing_webmaster'
wp option delete 'claimit_yandex_webmaster'
wp option delete 'claimit_pinterest'
wp option delete 'claimit_weboftrust_webmaster'
wp option delete 'claimit_webutation_webmaster'
wp option delete 'claimit_header_section'
wp option delete 'claimit_body_section'
wp option delete 'claimit_footer_section'

