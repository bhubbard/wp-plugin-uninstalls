#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'drgf_do_activation_redirect'
wp option delete 'drgf_fonts_check_result'
wp option delete 'drgf_fonts_check_time'
wp option delete 'dismissed-drgf-welcome'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"
wp option delete 'fusion_options'

# Delete Transients
wp transient delete 'drgf_captured_html'

