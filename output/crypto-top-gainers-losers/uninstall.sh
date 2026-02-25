#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpcpref_crypto_gainer_gainers'
wp option delete 'cpcpref_crypto_gainer_losers'
wp option delete 'cpcpref_crypto_gainer_credits'
wp option delete 'cpcpref_crypto_gainer_text_color'
wp option delete 'cpcpref_crypto_gainer_box_color'
wp option delete 'cpcpref_crypto_gainer_box_width'
wp option delete 'cpcpref_crypto_gainer_item_padding'
wp option delete 'cpcpref_crypto_gainer_max_items'

