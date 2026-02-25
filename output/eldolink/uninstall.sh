#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eldolink_affiliate'
wp option delete 'eldolink_token'
wp option delete 'eldolink_modal_display'
wp option delete 'eldolink_modal_tool'
wp option delete 'eldolink_modal_type'
wp option delete 'eldolink_modal_width'
wp option delete 'eldolink_modal_height'
wp option delete 'eldolink_modal_r'
wp option delete 'eldolink_modal_trk1'
wp option delete 'eldolink_modal_trk2'

# Delete Transients
wp transient delete 'ldo_affiliate'
wp transient delete 'ldo_products'
wp transient delete 'ldo_formats'
wp transient delete 'ldo_domains'
wp transient delete 'ldo_pricing_models'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ldo_formats_%' OR option_name LIKE '_site_transient_ldo_formats_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ldo_tools_%' OR option_name LIKE '_site_transient_ldo_tools_%'"
wp transient delete 'ldo_modals'

