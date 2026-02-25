#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dirtysuds_oembed_rss%' OR option_name LIKE '_site_transient_dirtysuds_oembed_rss%'"

