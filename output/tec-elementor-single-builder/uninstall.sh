#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tec_esb_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'elementor_container_width'
wp option delete 'elementor_cpt_support'

