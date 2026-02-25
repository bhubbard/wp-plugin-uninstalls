#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'minimum_custom'
wp option delete 'maximum_custom'
wp option delete 'allowed_custom'
wp option delete 'fgw_combo_custom'
wp option delete 'fgw_gift_multiple_custom'
wp option delete 'minimum_price'
wp option delete 'maximum_price'
wp option delete 'allowed_price'
wp option delete 'fgw_gift_multiple_price'
wp option delete 'minimum_category'
wp option delete 'maximum_category'
wp option delete 'allowed_category'
wp option delete 'fgw_select_cats_category'
wp option delete 'fgw_gift_multiple_category'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%fgwerror' OR option_name LIKE '_site_transient_%fgwerror'"

