#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns_wcapb_test_mode'
wp option delete 'ns_wcapb_text'
wp option delete 'ns_wcapb_delay'
wp option delete 'wt_wcapb_color_layer'
wp option delete 'wt_wcapb_opacity_layer'
wp option delete 'wt_wcapb_color_content'
wp option delete 'wt_wcapb_border_size'
wp option delete 'wt_wcapb_border_color'
wp option delete 'wt_wcapb_padding'
wp option delete 'ns_wcapb_test_mode_premium'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

