#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sswc_show_on_checkout'
wp option delete 'sswc_image'
wp option delete 'sswc_embed'
wp option delete 'sswc_show_on_cart'
wp option delete 'sswc_show_on_product'
wp option delete 'sswc_show_on_account'

