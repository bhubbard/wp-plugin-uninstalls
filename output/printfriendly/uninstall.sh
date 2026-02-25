#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pf_%'"
wp option delete 'printfriendly_option'
wp option delete 'pf_button_type'
wp option delete 'pf_custom_image'
wp option delete 'pf_custom_text'
wp option delete 'pf_custom_both'
wp option delete 'pf_show_list'
wp option delete 'pf_content_placement'
wp option delete 'pf_content_position'
wp option delete 'pf_margin_top'
wp option delete 'pf_margin_right'
wp option delete 'pf_margin_bottom'
wp option delete 'pf_margin_left'
wp option delete 'pf_text_color'
wp option delete 'pf_text_size'

# Delete Transients
wp transient delete 'pf-tab'

