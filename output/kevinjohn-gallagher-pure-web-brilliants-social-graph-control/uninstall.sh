#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%___options'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kjg_pwb_social_graph_post_%' OR option_name LIKE '_site_transient_kjg_pwb_social_graph_post_%'"

