#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'otterwp_buy_again_colors'
wp option delete 'otterwp_buy_again_flush_needed'

# Delete Transients
wp transient delete 'otterwp_buy_again_css_error'
wp transient delete 'otterwp_buy_again_css_needs_update'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_otterwp_buy_again_categories_%' OR option_name LIKE '_site_transient_otterwp_buy_again_categories_%'"

