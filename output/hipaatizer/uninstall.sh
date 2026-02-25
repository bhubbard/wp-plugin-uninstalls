#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hipaatizer_public_info_%' OR option_name LIKE '_site_transient_hipaatizer_public_info_%'"

