#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_ptp_query_atts_options' OR option_name LIKE '_site_transient_%_ptp_query_atts_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_ptp_cached_post' OR option_name LIKE '_site_transient_%_ptp_cached_post'"

