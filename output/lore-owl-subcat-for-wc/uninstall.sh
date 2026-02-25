#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mobile_noi'
wp option delete 'tablet_noi'
wp option delete 'desktop_noi'
wp option delete 'ch_arrows'
wp option delete 'ch_dots'
wp option delete 'font_size'
wp option delete 'carousel_padding'
wp option delete 'top_arrows'

