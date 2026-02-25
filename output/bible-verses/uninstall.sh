#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_duckdev_bible_verse_%' OR option_name LIKE '_site_transient_duckdev_bible_verse_%'"

