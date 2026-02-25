#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crypto_converter_coins'
wp option delete 'crypto_converter_fiat'
wp option delete 'crypto_converter_all'
wp option delete 'crypto_converter_footer'
wp option delete 'crypto_converter_text_color'
wp option delete 'crypto_converter_change_color'
wp option delete 'crypto_converter_box_color'

